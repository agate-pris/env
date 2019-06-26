1. Chocolatey

- [Chocolatey - The package manager for Windows](https://chocolatey.org/)
  - [Installation](https://chocolatey.org/install)

```ps1
Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

2. Ctrl2Cap

- [Ctrl2cap - Windows Sysinternals | Microsoft Docs](https://docs.microsoft.com/en-us/sysinternals/downloads/ctrl2cap)

```ps1
cinst ctrl2cap
cd $env:ProgramData
cd .\chocolatey\lib\ctrl2cap\tools\
ctrl2cap /install
```

3. Boxstarter

- [boxstarter](https://boxstarter.org/)
  - [Installing Boxstarter](https://boxstarter.org/InstallBoxstarter)

```ps1
cinst boxstarter
```

```bat
Install-BoxstarterPackage ./boxstarter.ps1
```

`~/AppData/Local/Boxstarter/boxstarter.log` を `Error while running` で検索して失敗している部分を確認すること.

4. その他

フォントはシステムレベルとユーザレベルのインストールが存在する事に注意。

```sh
git clone git@github.com:googlefonts/Inconsolata.git
git clone --depth=1 git@github.com:googlei18n/noto-cjk.git
```

何れも `otf` を使用.

- Microsoft Visual Studio
  - PaulHarrington.EditorGuidelines
  - VisualStudioPlatformTeam.ProductivityPowerPack2017
  - LLVMExtensions.ClangFormat
- Microsoft Visual Studio Code
  - joaompinto.asciidoctor-vscode
  - hnw.vscode-auto-open-markdown-preview
  - coenraads.bracket-pair-colorizer
  - ms-vscode.cpptools
  - austin.code-gnu-global
  - sohamkamani.code-eol
  - naumovs.color-highlight
  - eamodio.gitlens
  - ajshort.include-autocomplete
  - ms-ceintl.vscode-language-pack-ja
  - tinkertrain.theme-panda
