" ==== General ====
set nocompatible              " Use modern Vim behavior
set encoding=utf-8            " Handle UTF-8 properly
set hidden                    " Allow switching buffers without saving
set backspace=indent,eol,start " Make backspace behave intuitively

" ==== Line Numbers ====
set number                    " Show absolute line numbers
set relativenumber            " Show relative line numbers

" ==== Indentation ====
set expandtab                 " Use spaces instead of tabs
set shiftwidth=4              " Indent by 4 spaces
set tabstop=4                 " Tab character = 4 spaces
set softtabstop=4             " Soft tab width for editing
set autoindent                " Copy indent from current line when starting a new one
set smartindent               " Smart auto-indenting when starting a new line

" ==== Searching ====
set ignorecase                " Case-insensitive search...
set smartcase                 " ...unless search has uppercase
set incsearch                 " Show matches as you type
set hlsearch                  " Highlight all matches

" ==== Interface ====
syntax on                     " Enable syntax highlighting
set showmode                  " Show current mode (e.g., -- INSERT --)
set showcmd                   " Show command in bottom bar
set scrolloff=4               " Keep 4 lines of context when scrolling
