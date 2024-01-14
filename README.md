
# Configurations PowerShell/Neovim/Bash

![powershell](https://img.shields.io/badge/PowerShell-5391FE.svg?style=for-the-badge&logo=PowerShell&logoColor=white) ![neovim](https://img.shields.io/badge/Neovim-57A143.svg?style=for-the-badge&logo=Neovim&logoColor=white)  ![GNU Bash Badge](https://img.shields.io/badge/GNU%20Bash-4EAA25?logo=gnubash&logoColor=fff&style=for-the-badge) ![Ubuntu Badge](https://img.shields.io/badge/Ubuntu-E95420?logo=ubuntu&logoColor=fff&style=for-the-badge)

Ce dépôt contient mes configurations pour PowerShell et Neovim. Suivez les étapes ci-dessous pour installer et utiliser ces configurations.

- [Configurations PowerShell et Neovim](#configurations-powershell-et-neovim)
  - [Prérequis](#prérequis)
  - [Configurer PowerShell ](#configurer-powershell-)
  - [Configurer Neovim ](#configurer-neovim-)
  - [Configurer BASH sur Ubuntu ](#configurer-bash-sur-ubuntu-)

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

##  Configurer PowerShell ![PowerShell Badge](https://img.shields.io/badge/PowerShell-5391FE?logo=powershell&logoColor=fff&style=flat)

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

## Configurer Neovim ![Neovim Badge](https://img.shields.io/badge/Neovim-57A143?logo=neovim&logoColor=fff&style=flat)

1. **Configurer le fichier init.vim**:
   - Utilisez **Neovim** pour créer ou modifier le fichier `init.vim` :
     ```bash
     nvim $HOME\AppData\Local\nvim\init.vim
     ```
   - Consultez votre configuration actuelle pour ajouter vos plugins et personnaliser les options. [Ma configuration](https://github.com/ThomasHni/configs/blob/main/.config/nvim/init.vim).

2. **Installer les plugins**:
   - Ouvrez Neovim et exécutez la commande suivante pour installer les plugins énumérés dans le `init.vim` :
     ```vim
     :PlugInstall
     ```

## Configurer BASH sur Ubuntu ![GNU Bash Badge](https://img.shields.io/badge/GNU%20Bash-4EAA25?logo=gnubash&logoColor=fff&style=flat)

Pour configurer le thème **Oh My Posh** dans le fichier .bashrc sur Ubuntu, suivez les étapes ci-dessous :

1. **Installer Oh My Posh**:
   Utilisez la commande suivante pour installer Oh My Posh :
   ```bash
   $ sudo curl -s https://ohmyposh.dev/install.sh | sudo bash -s
   ```

2. **Télécharger des polices**:
   Téléchargez des polices depuis [Nerd Fonts](https://www.nerdfonts.com/font-downloads) pour prendre en charge le thème.

3. **Créer le fichier theme.omp.json**:
   Au même niveau que votre fichier `.bashrc`, créez un fichier `theme.omp.json` avec la commande suivante :
   ```bash
   $ sudo vim theme.omp.json
   ```
   Ajoutez le contenu de votre thème à l'intérieur, un exemple [est disponible ici](https://github.com/ThomasHni/configs/blob/main/config/bash/theme.omp.json).

4. **Modifier le fichier .bashrc**:
   Ouvrez le fichier .bashrc avec la commande suivante :
   ```bash
   $ sudo vim .bashrc
   ```
   Ajoutez la ligne suivante à la fin du fichier pour initialiser Oh My Posh :
   ```bash
   eval "$(oh-my-posh init bash --config $MY_POSH_CONFIG)"
   ```
   Et ajoutez cette ligne au début du fichier pour définir la configuration du thème :
   ```bash
   export MY_POSH_CONFIG=~/theme.omp.json
   ```

5. **Source .bashrc**:
   Rechargez le fichier .bashrc avec la commande suivante :
   ```bash
   $ source ~/.bashrc
   ```

---

Auteur : [Thomas Hnizdo](mailto:thomas.hnizdo@gmail.com)


Date : 13 Janvier 2023
