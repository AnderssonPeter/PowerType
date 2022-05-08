<div align="center">
  <img src="Icon.svg" alt="Logo" width="80" height="80">
  

  <h3 align="center">PowerType</h3>

  <p align="center">
    Autocomplete for Powershell
    <br />
    ·
    <a href="https://github.com/AnderssonPeter/PowerType/issues/new?assignees=&labels=dictionary+request&template=dictionary-request.md&title=">Request Dictionary</a>
    ·
    <a href="https://github.com/AnderssonPeter/PowerType/issues/new?assignees=&labels=&template=feature_request.md&title=">Request Feature</a>
    ·
    <a href="https://github.com/AnderssonPeter/PowerType/issues/new?assignees=&labels=bug&template=bug_report.md&title=">Report Bug</a>
    ·
  </p>
</div>

[![asciicast](https://asciinema.org/a/458149.svg)](https://asciinema.org/a/458149?autoplay=1)

- [Installation](#installation)
  - [Requirements](#requirements)
  - [Auto enable in every session](#auto-enable-in-every-session)
  - [Uninstall](#uninstall)
- [Troubleshooting](#troubleshooting)
- [Progress](#progress)
- [Contribute](#contribute)
- [Acknowledgements](#acknowledgements)

[![PowerShell Gallery](https://img.shields.io/powershellgallery/v/powertype?style=flat-square)](https://www.powershellgallery.com/packages/PowerType)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/dt/PowerType?style=flat-square)](https://www.powershellgallery.com/packages/PowerType)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://github.com/AnderssonPeter/PowerType/blob/main/LICENSE.md)

[![unit tests](https://img.shields.io/github/workflow/status/AnderssonPeter/PowerType/unit%20tests?label=unit%20tests&style=flat-square)](https://github.com/AnderssonPeter/PowerType/actions/workflows/test.yml)
[![Testspace tests](https://img.shields.io/testspace/tests/AnderssonPeter/AnderssonPeter:PowerType/main?style=flat-square)](https://anderssonpeter.testspace.com/spaces/156585/result_sets)
[![Coverage Status](https://img.shields.io/coveralls/github/AnderssonPeter/PowerType?style=flat-square)](https://coveralls.io/github/AnderssonPeter/PowerType)
[![Sonar Violations (short format)](https://img.shields.io/sonar/violations/AnderssonPeter_PowerType/main?format=long&server=https%3A%2F%2Fsonarcloud.io&style=flat-square)](https://sonarcloud.io/project/issues?id=AnderssonPeter_PowerType&resolved=false&types=CODE_SMELL)

# Installation
It's not feature complete yet but if you want to try it out run the following:
```PowerShell
Install-Module PowerType -AllowPrerelease
Enable-PowerType
Set-PSReadLineOption -PredictionSource HistoryAndPlugin -PredictionViewStyle ListView # Optional
```

If you now type `git` you should get autocompletion, the [dictionary for git](PowerType/Dictionaries/git.ps1) is far from complete and doesn't know about all commands and parameters yet.

## Requirements

Ensure that you are running `PowerShell 7.2` and `PSReadLine 2.2.0-beta4` or newer!

## Auto enable in every session
Open your `PowerShell Profile` by running `notepad $Profile` and add the following:
```PowerShell
Enable-PowerType
Set-PSReadLineOption -PredictionSource HistoryAndPlugin -PredictionViewStyle ListView
```


## Uninstall
```Powershell
Disable-PowerType
Remove-Module PowerType
Uninstall-Module PowerType
```

# Troubleshooting
```PowerShell
Get-PowerTypeStatus # To see if the background service is running as intended
Get-PowerTypeHistory # Used to see if any suggestions caused a exception
```

# Progress
[![GitHub milestone](https://img.shields.io/github/milestones/progress/AnderssonPeter/PowerType/1?style=flat-square)](https://github.com/AnderssonPeter/PowerType/milestone/1)
[![GitHub milestone](https://img.shields.io/github/milestones/progress/AnderssonPeter/PowerType/2?style=flat-square)](https://github.com/AnderssonPeter/PowerType/milestone/2)
[![GitHub milestone](https://img.shields.io/github/milestones/progress/AnderssonPeter/PowerType/3?style=flat-square)](https://github.com/AnderssonPeter/PowerType/milestone/3)
[![GitHub milestone](https://img.shields.io/github/milestones/progress/AnderssonPeter/PowerType/4?style=flat-square)](https://github.com/AnderssonPeter/PowerType/milestone/4)

This project is far from done but has the aim to provide autocomplete for common cli tools like [git](PowerType/Dictionaries/git.ps1), [npm](PowerType/Dictionaries/npm.ps1), [adb](PowerType/Dictionaries/adb.ps1), docker, dotnet, node and many more while using powershell. 

# Contribute
If you wish to contribute the following would be greatly appreciated
* Give this repository a Star
* Spread the word
* Create a pull request with a new Dictionary (See [npm](PowerType/Dictionaries/npm.ps1) for a simple example)
* Sponsor using the button above (Only do this if you can afford to)

# Acknowledgements
This is heavily inspired by [Fish shell](https://fishshell.com/) and [fig autocomplete](https://github.com/withfig/autocomplete), some dictionaries are generated from the specifications in [Carapace-bin](https://github.com/rsteube/carapace-bin/) big thanks to [rsteube](https://github.com/rsteube) for his patience and help!
