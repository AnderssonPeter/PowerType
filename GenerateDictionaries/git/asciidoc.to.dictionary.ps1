Function Insert-InArray($array, $insertAfter, $value){
    #find the index of value before insertion
    $insertPoint = $array.IndexOf($insertAfter)
    #split the array into two parts
    $firstHalf = $array[0..$insertPoint]
    $secondHalf = $array[($insertPoint +1)..$array.Length]
    #slice into a new array
    $newArray = @($firstHalf,$value,$secondHalf)
    return $newArray
    #returning this new array means you can assign it over the old array
}

Function Trim-InnerText([string]$text) {
    return $text.trim(" `r`n")
}

Function Number-OfDashes([string]$text) {
    $count = 0;
    foreach ($char in $text.ToCharArray()) {
        $count++
        if ($char -ne '-') {
            return $count
        }
    }
    $count-- # Something with text should come before --
    return $count
}

Function Get-Name([string]$text) {
    $text = $text.TrimStart("-")
    $index = $text.IndexOf("=")
    if ($index -ne -1) {
        $text = $text.Substring(0, $index)
    }
    $index = $text.IndexOf("[")
    if ($index -ne -1) {
        $text = $text.Substring(0, $index)
    }
    $index = $text.IndexOf("<")
    if ($index -ne -1) {
        $text = $text.Substring(0, $index)
    }
    $index = $text.IndexOf("&lt;")
    if ($index -ne -1) {
        $text = $text.Substring(0, $index)
    }
    return $text.TrimEnd()
}

Function Trim-TermInnerText([string]$text) {
    $index = $text.IndexOf("=")
    if ($index -ne -1) {
        $text = $text.Substring(0, $index)
    }
    $index = $text.IndexOf("[")
    if ($index -ne -1) {
        $text = $text.Substring(0, $index)
    }
    $index = $text.IndexOf("<")
    if ($index -ne -1) {
        $text = $text.Substring(0, $index)
    }
    $index = $text.IndexOf("&lt;")
    if ($index -ne -1) {
        $text = $text.Substring(0, $index)
    }
    return $text.TrimEnd()
}

Function Is-Value([string]$text) {
    return $text.Contains("=") -or $text.Contains("<") -or $text.Contains("&lt;")
}


Write-Host "Enumerating files"
[System.Collections.ArrayList] $files = @(Get-ChildItem -Filter '*.xml')

$highPriorityCommands = @('add', 'commit', 'checkout', 'stash', 'merge', 'clone', 'rebase', 'status', 'push', 'fetch', 'log', 'diff', 'branch', 'blame', 'cherry-pick', 'revert', 'tag')
$lowPriorityCommands = @('am', 'instaweb', 'bugreport', 'daemon', 'update-server-info', 'format-patch', 'send-email', 'request-pull', 'svn')

for ($i = $highPriorityCommands.length-1; $i -ge 0; $i--) {
    $command = 'git-' + $highPriorityCommands[$i] + '.xml'
    $match = $files | Where { $_.Name -eq $command } | Select -First 1
    if ($match -eq $null)
    {
        Write-Error "The file '$command' did not exist"
        continue;
        #exit 1
    }
    $files.Remove($match)
    $files.Insert(0, $match)
}

foreach ($lowPriorityCommand in $lowPriorityCommands)
{
    $command = 'git-' + $lowPriorityCommand + '.xml'
    $match = $files | Where { $_.Name -eq $command } | Select -First 1
    if ($match -eq $null)
    {
        Write-Error "The file '$command' did not exist"
        continue;
        #exit 1
    }	
    $files.Remove($match)
    $files.Add($match)
    
}

$transformationFile = Join-Path $pwd.Path "asciidoc.to.dictionary.xlts"
$xslt = New-Object System.Xml.Xsl.XslCompiledTransform

Write-Host "Loading transformation file"
$xsltSettings = New-Object System.Xml.Xsl.XsltSettings($true, $true)
$xsltResolver = New-Object System.Xml.XmlUrlResolver
$xslt.Load($transformationFile, $xsltSettings, $xsltResolver)
$result = ""
foreach ($file in $files)
{
    Write-Host "Processing $file"
    [xml]$xmlDocument = Get-Content $file.FullName
    $options = $xmlDocument.refentry.refsect1 | where { $_.id -eq '_options' }
    $parameters = $options.variablelist.varlistentry
    $inlineNoRegex = '^([\s\S]*)\[(-?no-?)\]([\s\S]*)$'

    #Fix all terms
    foreach ($parameter in $parameters)
    {
        $terms = $parameter.SelectNodes("term");
        foreach ($term in $terms)
        {
            $term.InnerText = Trim-InnerText $term.InnerText
        }
    }

    foreach ($parameter in $parameters)
    {
        # check if we need to split a [-no-]
        $terms = $parameter.SelectNodes("term");
        foreach ($term in $terms)
        {
            #Write-Host $term.InnerText.Replace("`n", "").Replace("`r", "")
        }
        $term = $terms | where { $_.InnerText -match $inlineNoRegex }
        if ($term)
        {

            $value = $term.InnerText
            #Write-Host "Fixing $value"
            $term.InnerText = $value -replace $inlineNoRegex, '$1$3'

            $parameterClone = $parameter.CloneNode($true)
            foreach ($clonedTerm in $parameterClone.SelectNodes("term"))
            {
                $parameterClone.RemoveChild($clonedTerm)
            }
            $clonedTerm = $term.CloneNode($true)
            $clonedTerm.InnerText = $value -replace $inlineNoRegex, '$1$2$3'
            $parameterClone.PrependChild($clonedTerm)
            $parameter.ParentNode.InsertAfter($parameterClone, $parameter)

            $term = $terms | where { (TrimInnerText $_.InnerText) -match '^-n$' }
            if ($term) {
                $parameter.RemoveChild($term)
                $parameterClone.InsertAfter($term, $clonedTerm)
            }
        }
    }
    $parameters = $options.variablelist.varlistentry

    # Ensure that -- is before -
    foreach ($parameter in $parameters)
    {
        $terms = $parameter.SelectNodes("term");
        foreach ($term in $terms)
        {
            $parameter.RemoveChild($term)
        }
        foreach ($term in $terms | Sort -Property { Number-OfDashes $_.InnerText } )
        {
            $parameter.PrependChild($term)
        }
    }

    # Split with both -no- and not -no-
    foreach ($parameter in $parameters)
    {
        $terms = $parameter.SelectNodes("term");
        $term = $terms | where { $_.InnerText -match '-no-' }
        if ($term) {
            $value = $term.InnerText
            Write-Host "Handle $value"
            # Check if there is one without no
            $withoutNo = $value.Replace('-no-', '-')
            $match = $terms | where { 
                $_.InnerText -like "$withoutNo*"
            }
            
            if ($match) {
                #Split it like a bad boy
                $parameterClone = $parameter.CloneNode($true)
                foreach ($clonedTerm in $parameterClone.SelectNodes("term"))
                {
                    $parameterClone.RemoveChild($clonedTerm)
                }
                $clonedTerm = $term.CloneNode($true)
                $parameterClone.PrependChild($clonedTerm)
                $parameter.ParentNode.InsertAfter($parameterClone, $parameter)
                $parameter.RemoveChild($term)

                $term = $terms | where { (TrimInnerText $_.InnerText) -match '^-n$' }
                if ($term) {
                    $parameter.RemoveChild($term)
                    $parameterClone.InsertAfter($term, $clonedTerm)
                }
            }
        }
    }
    $parameters = $options.variablelist.varlistentry

    # Add name element and type
    foreach ($parameter in $parameters)
    {
        $terms = $parameter.SelectNodes("term");
        $firstTerm = $terms[0];
        
        $name = Get-Name $firstTerm.InnerText
        $nameElement = $xmlDocument.CreateElement("name")
        $nameElement.InnerText = $name

        $typeElement = $xmlDocument.CreateElement("type")
        $typeElement.InnerText = "Flag"
        foreach($term in $terms) {
            if (Is-Value $term.InnerText)
            {
                $typeElement.InnerText = "Value"
            }
            $term.InnerText = Trim-TermInnerText $term.InnerText
        }

        $parameter.PrependChild($typeElement)
        $parameter.PrependChild($nameElement)
    }


    # Add excluding
    foreach ($parameter in $parameters)
    {
        $name = $parameter.SelectSingleNode("name").InnerText
        
        if ($name.StartsWith("no-")) {
            $other = $parameters | where { $_.SelectSingleNode("name").InnerText -eq $name.Substring(3) }
            
            if ($other) {
                $excludingElement = $xmlDocument.CreateElement("excluding")
                $excludingElement.InnerText = $name.Substring(3)
                
                $parameter.InsertAfter($excludingElement, $parameter.SelectSingleNode("type"))
                
                $excludingElement = $xmlDocument.CreateElement("excluding")
                $excludingElement.InnerText = $name
                $other.InsertAfter($excludingElement, $other.SelectSingleNode("type"))
            }
            else {
                Write-Warning "Failed to find excluding for $name"
            }
        }

        if ($name -eq "verbose") {
            $other = $parameters | where { $_.SelectSingleNode("name").InnerText -eq "quiet" }
            
            if ($other) {
                $otherName = $other.SelectSingleNode("name").InnerText
                $excludingElement = $xmlDocument.CreateElement("excluding")
                $excludingElement.InnerText = $otherName                
                $parameter.InsertAfter($excludingElement, $parameter.SelectSingleNode("type"))
                
                $excludingElement = $xmlDocument.CreateElement("excluding")
                $excludingElement.InnerText = $name
                $other.InsertAfter($excludingElement, $other.SelectSingleNode("type"))
            }
            else {
                Write-Warning "Failed to find excluding for $name"
            }
        }

        if ($name -eq "ipv4") {
            $other = $parameters | where { $_.SelectSingleNode("name").InnerText -eq "ipv6" }
            
            if ($other) {
                $otherName = $other.SelectSingleNode("name").InnerText
                $excludingElement = $xmlDocument.CreateElement("excluding")
                $excludingElement.InnerText = $otherName                
                $parameter.InsertAfter($excludingElement, $parameter.SelectSingleNode("type"))
                
                $excludingElement = $xmlDocument.CreateElement("excluding")
                $excludingElement.InnerText = $name
                $other.InsertAfter($excludingElement, $other.SelectSingleNode("type"))
            }
            else {
                Write-Warning "Failed to find excluding for $name"
            }
        }
    }

    $xmlDocument.save($file.FullName + '.tmp')

    $inputStream = [System.IO.File]::OpenRead($file.FullName + '.tmp')
    $reader = New-Object System.Xml.XmlTextReader($inputStream)
    $reader.DtdProcessing = [System.Xml.DtdProcessing]::Ignore
    
    $outputStream = New-Object System.IO.MemoryStream
    $writer = New-Object System.Xml.XmlTextWriter($outputStream, [System.Text.Encoding]::UTF8)
    Write-Host "Transforming"
    $xslt.Transform($reader, $writer)
    $writer.Flush()
    $content = $outputStream.ToArray()
    $contentString = [System.Text.Encoding]::UTF8.GetString($content);
    $result += $contentString + "`n"
    $outputStream.Dispose()
    $inputStream.Dispose()
}

Write-Host "Writing"
$outputPath = Join-Path $pwd.Path "output.ps1"
Set-Content $outputPath $result
