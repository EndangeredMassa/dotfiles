" vim settings
  set number " enable line numbers
  set backspace=indent,eol,start
  set numberwidth=5 " width of the gutter column
  set ruler         " always show current position on the status line
  set wildmode=list:longest,list:full
  set wildignore+=*.js,*.o,*.obj,.git,*.rbc,*.class,.git,*.jpg,*.png,*.gif,*.jpeg,*.svg,*.db,*.swf
  let mapleader=","
  set history=1000
  set cursorline
  set directory=~/.nvim/swap
  set novb " turn off visualbell
  filetype plugin indent on
  set lazyredraw " helps with some scrolling lag






  " Status Bar
  set laststatus=2  " always show the status bar
  set statusline=%F\ %r\ (%p%%)\ [%c,%l]\ %m " Format statusbar http://vim.runpaint.org/display/changing-status-line/

  " timeout issues
  set notimeout
  set ttimeout
  set timeoutlen=50
  set ttimeoutlen=100

  " Whitespace related
  set nowrap
  set tabstop=2     " how many columns a tab counts for
  set shiftwidth=2  " how many columns text is indented with reindent operations
  set softtabstop=2 " how many columns vim uses when hitting tab in insert mode
  set expandtab     " convert tabs into appropriate number of spaces

  " Searching
  set hlsearch    " highlight all search pattern matches
  set incsearch   " highlight first match as you type (incremental search)
  set ignorecase  " ignore case for search
  set smartcase   " case-sensitive search if search contains uppercase character & ignorecase is on

  " insert only one space when joining lines
  set nojoinspaces





" Syntax Highlighting
  syntax on
  colorscheme dracula
  hi Normal ctermbg=none
  hi CursorLine ctermbg=none cterm=bold

  au Bufread,BufNewFile *.feature set filetype=gherkin
  au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
  au BufNewFile,BufRead *.json set ft=javascript

  " highlight whitespace
  set listchars=tab:>-,trail:.
  set list
  highlight SpecialKey term=standout ctermbg=red guibg=red

" Key Mapping
  " Set :W to create directory of file
  function WriteCreatingDirs()
    let dir=expand('%:h')
    if !isdirectory(dir)
      call mkdir(dir, 'p')
    endif
    write
  endfunction
  command W call WriteCreatingDirs()

  " Folding
  set foldmethod=indent
  set foldlevelstart=100
  nnoremap <Space> za

  " Remap the tab key to do autocompletion or indentation depending on the
  " context (from http://www.vim.org/tips/tip.php?tip_id=102)
  function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
      return "\<tab>"
    else
      return "\<c-p>"
    endif
  endfunction
  inoremap <tab> <c-r>=InsertTabWrapper()<cr>
  inoremap <s-tab> <c-n>

  " move between windows
  map <C-J> <C-W>j
  map <C-K> <C-W>k
  map <C-H> <C-W>h
  map <C-L> <C-W>l

  " remap some keys that get in the way
  nmap <F1> <nop>
  imap <F1> <nop>
  nmap ` <nop>

  " clear the search buffer when hitting return
  nnoremap <CR> :nohlsearch<cr>

  " Adjust viewports to the same size
  map <Leader>= <C-w>=
  imap <Leader>= <Esc> <C-w>=


