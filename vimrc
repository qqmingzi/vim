set wildmenu
set number
set autochdir
set autoread
set autowrite
set mouse=n
filetype on
syn on
set pastetoggle=<F9>
set cindent
set smartindent
autoindent
filetype indent on
set smarttab
set shiftwidth=4
set softtabstop=4
set hlsearch
set incsearch
set ts=4
set tags+=/usr/data/Allwinner_H3/uboot_kernel/orangepi_sdk/source/linux-3.4.112/tags
set tags+=/usr/include/tags
set tags+=tags
set encoding=utf-8
set path+=/usr/data/Allwinner_H3/uboot_kernel/orangepi_sdk/source/linux-3.4.112/include
set path+=/usr/data/Allwinner_H3/uboot_kernel/orangepi_sdk/source/linux-3.4.112/arch/arm/include
set path+=/usr/data/Allwinner_H3/uboot_kernel/orangepi_sdk/source/linux-3.4.112/arch/arm/mach-sunxi/include
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=0
  set cst
  set csverb
  set cspc=3
  "add any database in current dir
   if filereadable("cscope.out")
    cs add cscope.out
  "else search cscope.out elsewhere
   else
    let cscope_file=findfile("cscope.out", ".;")
    let cscope_pre=matchstr(cscope_file, ".*/")
      if !empty(cscope_file) && filereadable(cscope_file)
        exe "cs add" cscope_file cscope_pre
      endif
    endif
 endif
