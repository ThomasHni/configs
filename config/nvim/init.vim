
"------------------------ Configuration générale ---------------------------

set number            " Afficher les numéros de ligne
set mouse=a           " Activer le support de la souris

"------------------------ Configuration du retrait ---------------------------

set tabstop=4         " Nombre d'espaces par tabulation
set shiftwidth=4      " Nombre d'espaces pour le retrait automatique
set expandtab         " Utiliser des espaces à la place des tabulations

"------------------------ Gestion du texte -----------------------------------

set wrap              " Activer le retour automatique à la ligne
set linebreak         " Casser les lignes à l'intérieur des mots

"------------------------ Réglages pratiques ---------------------------------

set showmatch         " Surbrillance la parenthèse correspondante
set autoindent        " Activer l'auto-indentation
set smartindent       " Indentation intelligente

"------------------------ Options pour améliorer l'utilisation ------------------

set incsearch         " Activer la recherche incrémentale

set ignorecase        " Ignorer la casse lors de la recherche


set smartcase         " correspondance en cas de recherche sensible à la casse

set completeopt=menuone,noselect " Activer la complétion automatique pendant la saisie

syntax enable         " Coloration syntaxique

"------------------------ Informations dans la barre d'état ---------------------

" Chemin du fichier dans la barre d'état
set ruler

"------------------------------- Plugins --------------------------------
":PlugInstall

call plug#begin()

Plug 'https://github.com/preservim/nerdtree'     " NerdTree
Plug 'https://github.com/ap/vim-css-color'       " CSS Color Preview
"Plug 'https://github.com/neoclide/coc.nvim'     " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
