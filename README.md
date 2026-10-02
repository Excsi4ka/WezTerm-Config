# WezTerm Config

Personal WezTerm configuration for Windows.

The tracked configuration is `wezterm.lua`. WezTerm loads it through a symbolic link at `%USERPROFILE%\.wezterm.lua`.

## Installation

Clone this repository, back up any existing `.wezterm.lua`, then run PowerShell from the repository directory:

```powershell
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.wezterm.lua" -Target (Join-Path $PWD 'wezterm.lua')
```

Creating symbolic links on Windows may require Developer Mode or an elevated PowerShell session.

Edit `wezterm.lua` in this repository to update the configuration. WezTerm normally reloads configuration changes automatically.
