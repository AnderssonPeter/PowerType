function Parse-KeyText ($Content) {
    $Content = $Content.Replace("`r`n", "`n").Replace("`n", "{ENTER}")
    [regex]$regex = '(?<modifiers>[+^%]+)?(?<content>{[^}]+}|[^+?^\^^%])'
    $regex.Matches($Content) | % { $_.Value }
}

function Send-Keys ($KeyStrokes, $KeyPressSleep = 30, $LongSleep = 1500) {
    $wshell = New-Object -ComObject wscript.shell
    Sleep -Milliseconds 100
    foreach ($KeyPress in $KeyStrokes)
    {
        if ($KeyPress -eq '{ALT}')
        {
            $KeyPress = '%'
        }
        elseif ($KeyPress -eq '{SHIFT}')
        {
            $KeyPress = '+'
        }
        elseif ($KeyPress -eq '{CTRL}')
        {
            $KeyPress = '^'
        }
        
        if ($KeyPress -eq '{SLEEP}')
        {
            Sleep -Milliseconds $LongSleep
        }		
        else {
            Sleep -Milliseconds $KeyPressSleep
            $wshell.SendKeys($KeyPress)
        }
    }
}
#Documentation https://ss64.com/vb/sendkeys.html
$textToSend = @"
{SHIFT}{CTRL}t{SLEEP}cd D:\Users\Peter\source\repos\FluentTerminal
powersession rec -c "pwsh -nologo" recording.txt
{SLEEP}Import-Module PowerType
{SLEEP}Enable-PowerType
git c{SLEEP}{DOWN}{SLEEP}{DOWN}{SLEEP} m{SLEEP}{DOWN}{SLEEP}
{SHIFT}{CTRL}w
{SLEEP}exit

"@
Write-Host "Installing powertype"
Install-Module PowerType
Write-Host "Simulating"
$KeyStrokes = Parse-KeyText -Content $textToSend
Send-Keys -KeyStrokes $KeyStrokes
Write-Host "Uninstalling PowerType"
Uninstall-Module PowerType