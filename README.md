# Configurations PowerShell et Neovim

![powershell](https://img.shields.io/badge/PowerShell-5391FE.svg?style=for-the-badge&logo=PowerShell&logoColor=white) ![neovim](https://img.shields.io/badge/Neovim-57A143.svg?style=for-the-badge&logo=Neovim&logoColor=white) ![windows](https://img.shields.io/badge/Windows-0078D4.svg?style=for-the-badge&logo=Windows&logoColor=white)

Ce dépôt contient mes configurations pour PowerShell et Neovim. Suivez les étapes ci-dessous pour installer et utiliser ces configurations.

- [Configurations PowerShell et Neovim](#configurations-powershell-et-neovim)
  - [Prérequis](#prérequis)
  - [Configurer PowerShell](#configurer-powershell)
  - [Configurer Neovim](#configurer-neovim)

## Prérequis

1. **Installer Scoop**:
   Suivez les instructions d'installation à partir du lien officiel : [Scoop Installation](https://scoop.sh/).

2. **Installer Git for Windows**:
   Suivez les instructions d'installation depuis le lien officiel : [Git for Windows](https://gitforwindows.org/).
   ```powershell
   winget install -e --id Git.Git
   ```

3. **Installer Neovim et GCC avec Scoop**:
   ```powershell
   scoop install neovim gcc
   ```

## Configurer PowerShell

1. **Configurer votre profil PowerShell**:
   - Ouvrez le fichier de profil avec Neovim :
     ```powershell
     nvim $PROFILE.CurrentUserCurrentHost
     ```
   - Ajoutez la ligne suivante pour charger votre fichier de configuration :
     ```powershell
     $env:USERPROFILE\.config\powershell\user_profile.ps1
     ```

2. **Configurer votre fichier user_profile.ps1**:
   - Dans votre dossier personnel, créez un dossier `.config` s'il n'existe pas, puis un dossier `powershell` à l'intérieur.
   - Utilisez Neovim pour créer ou modifier le fichier `user_profile.ps1` :
     ```powershell
     nvim $HOME\.config\powershell\user_profile.ps1
     ```
   - Consultez ma configuration disponible [sur ce lien GitHub](https://github.com/ThomasHni/configs/blob/main/.config/powershell/user_profile.ps1) pour voir comment personnaliser votre fichier `user_profile.ps1`.

3. **Installer Oh My Posh et posh-git**:
   ```powershell
   Install-Module posh-git -Scope CurrentUser -Force
   Install-Module oh-my-posh -Scope CurrentUser -Force
   ```

4. **Configurer le thème Oh My Posh**:
   - Créez un fichier `theme.omp.json` au même niveau que `user_profile.ps1` et configurez votre thème à l'intérieur. Mon thème [est disponible sur GitHub](https://github.com/ThomasHni/configs/blob/main/.config/powershell/theme.omp.json).

5. **Installer les icônes Terminal**:
   ```powershell
   Install-Module -Name Terminal-Icons -Repository PSGallery -Force
   Import-Module Terminal-Icons
   ```

6. **Mettre à jour le fichier user_profile.ps1**:
   - Mettez à jour votre fichier `user_profile.ps1` en fonction des modules ajoutés et des thèmes appliqués.

## Configurer Neovim

1. **Configurer le fichier init.vim**:
   - Utilisez Neovim pour créer ou modifier le fichier `init.vim` :
     ```bash
     nvim $HOME\AppData\Local\nvim\init.vim
     ```
   - Consultez votre configuration actuelle pour ajouter vos plugins et personnaliser les options. [Ma configuration](https://github.com/ThomasHni/configs/blob/main/.config/nvim/init.vim).

2. **Installer les plugins**:
   - Ouvrez Neovim et exécutez la commande suivante pour installer les plugins énumérés dans le `init.vim` :
     ```vim
     :PlugInstall
     ```

---

Auteur : Hnizdo Thomas

Date : 13 Janvier 2023
