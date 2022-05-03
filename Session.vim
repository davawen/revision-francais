let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd /mnt/Projects/Web/revision-francais
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
set shortmess=aoO
badd +32 /mnt/Projects/Web/revision-francais/src/App.svelte
badd +1 /mnt/Projects/Web/revision-francais/src/Timeline.svelte
badd +103 /mnt/Projects/Web/revision-francais/src/Registres.svelte
badd +1 /mnt/Projects/Web/revision-francais/src/defs.ts
badd +1 term:///mnt/Projects/Web/revision-francais//25337:/usr/bin/zsh
badd +8 /mnt/Projects/Web/revision-francais/rollup.config.js
badd +1 /mnt/Projects/Web/revision-francais/src/main.ts
badd +15 /mnt/Projects/Web/revision-francais/public/index.html
badd +67 /mnt/Projects/Web/revision-francais/public/global.css
badd +0 ./
badd +8 /mnt/Projects/Web/revision-francais/src/Collapser.svelte
argglobal
%argdel
$argadd ./
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit /mnt/Projects/Web/revision-francais/src/Registres.svelte
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 28 + 30) / 60)
exe '2resize ' . ((&lines * 28 + 30) / 60)
argglobal
balt /mnt/Projects/Web/revision-francais/src/defs.ts
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
11
normal! zo
11
normal! zo
14
normal! zo
14
normal! zo
33
normal! zo
34
normal! zo
35
normal! zo
36
normal! zo
37
normal! zo
39
normal! zo
44
normal! zo
45
normal! zo
47
normal! zo
75
normal! zo
76
normal! zo
85
normal! zo
93
normal! zo
97
normal! zo
102
normal! zo
let s:l = 55 - ((0 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 55
normal! 01|
wincmd w
argglobal
if bufexists(fnamemodify("/mnt/Projects/Web/revision-francais/src/App.svelte", ":p")) | buffer /mnt/Projects/Web/revision-francais/src/App.svelte | else | edit /mnt/Projects/Web/revision-francais/src/App.svelte | endif
if &buftype ==# 'terminal'
  silent file /mnt/Projects/Web/revision-francais/src/App.svelte
endif
balt /mnt/Projects/Web/revision-francais/public/global.css
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
29
normal! zo
32
normal! zo
36
normal! zo
36
normal! zo
47
normal! zo
54
normal! zo
60
normal! zo
60
normal! zo
let s:l = 19 - ((0 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 19
normal! 0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 28 + 30) / 60)
exe '2resize ' . ((&lines * 28 + 30) / 60)
tabnext
argglobal
if bufexists(fnamemodify("term:///mnt/Projects/Web/revision-francais//25337:/usr/bin/zsh", ":p")) | buffer term:///mnt/Projects/Web/revision-francais//25337:/usr/bin/zsh | else | edit term:///mnt/Projects/Web/revision-francais//25337:/usr/bin/zsh | endif
if &buftype ==# 'terminal'
  silent file term:///mnt/Projects/Web/revision-francais//25337:/usr/bin/zsh
endif
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 25 - ((24 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 25
normal! 0
tabnext 1
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
