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
badd +6 /mnt/Projects/Web/revision-francais/src/Timeline.svelte
badd +25 /mnt/Projects/Web/revision-francais/src/App.svelte
badd +2 man://builtins(1)
badd +39 /mnt/Projects/Web/revision-francais/src/Registres.svelte
badd +4 /mnt/Projects/Web/revision-francais/src/defs.ts
badd +1 term:///mnt/Projects/Web/revision-francais//42209:/usr/bin/zsh
badd +6 /mnt/Projects/Web/revision-francais/src/main.ts
badd +9 /mnt/Projects/Web/revision-francais/rollup.config.js
badd +0 ./
badd +0 neo-tree\ filesystem\ \[1]
badd +34 man://grid(n)
argglobal
%argdel
$argadd ./
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit neo-tree\ filesystem\ \[1]
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
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
exe 'vert 1resize ' . ((&columns * 40 + 106) / 213)
exe '2resize ' . ((&lines * 40 + 32) / 65)
exe 'vert 2resize ' . ((&columns * 172 + 106) / 213)
exe '3resize ' . ((&lines * 19 + 32) / 65)
exe 'vert 3resize ' . ((&columns * 172 + 106) / 213)
exe '4resize ' . ((&lines * 1 + 32) / 65)
exe 'vert 4resize ' . ((&columns * 172 + 106) / 213)
argglobal
balt /mnt/Projects/Web/revision-francais/src/Timeline.svelte
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 31) / 62)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("/mnt/Projects/Web/revision-francais/src/Registres.svelte", ":p")) | buffer /mnt/Projects/Web/revision-francais/src/Registres.svelte | else | edit /mnt/Projects/Web/revision-francais/src/Registres.svelte | endif
if &buftype ==# 'terminal'
  silent file /mnt/Projects/Web/revision-francais/src/Registres.svelte
endif
balt /mnt/Projects/Web/revision-francais/src/Timeline.svelte
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
19
normal! zo
24
normal! zo
27
normal! zo
27
normal! zo
27
normal! zo
46
normal! zo
47
normal! zo
48
normal! zo
49
normal! zo
50
normal! zo
53
normal! zo
57
normal! zo
58
normal! zo
60
normal! zo
68
normal! zo
69
normal! zo
70
normal! zo
71
normal! zo
72
normal! zo
75
normal! zo
76
normal! zo
87
normal! zo
88
normal! zo
98
normal! zo
103
normal! zo
let s:l = 117 - ((34 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 117
normal! 021|
wincmd w
argglobal
if bufexists(fnamemodify("/mnt/Projects/Web/revision-francais/src/App.svelte", ":p")) | buffer /mnt/Projects/Web/revision-francais/src/App.svelte | else | edit /mnt/Projects/Web/revision-francais/src/App.svelte | endif
if &buftype ==# 'terminal'
  silent file /mnt/Projects/Web/revision-francais/src/App.svelte
endif
balt /mnt/Projects/Web/revision-francais/src/main.ts
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
7
normal! zo
11
normal! zo
16
normal! zo
17
normal! zo
28
normal! zo
35
normal! zo
38
normal! zo
let s:l = 25 - ((17 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 25
normal! 027|
wincmd w
argglobal
if bufexists(fnamemodify("/mnt/Projects/Web/revision-francais/src/defs.ts", ":p")) | buffer /mnt/Projects/Web/revision-francais/src/defs.ts | else | edit /mnt/Projects/Web/revision-francais/src/defs.ts | endif
if &buftype ==# 'terminal'
  silent file /mnt/Projects/Web/revision-francais/src/defs.ts
endif
balt /mnt/Projects/Web/revision-francais/src/Registres.svelte
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 4 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 05|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 40 + 106) / 213)
exe '2resize ' . ((&lines * 40 + 32) / 65)
exe 'vert 2resize ' . ((&columns * 172 + 106) / 213)
exe '3resize ' . ((&lines * 19 + 32) / 65)
exe 'vert 3resize ' . ((&columns * 172 + 106) / 213)
exe '4resize ' . ((&lines * 1 + 32) / 65)
exe 'vert 4resize ' . ((&columns * 172 + 106) / 213)
tabnext
argglobal
if bufexists(fnamemodify("term:///mnt/Projects/Web/revision-francais//42209:/usr/bin/zsh", ":p")) | buffer term:///mnt/Projects/Web/revision-francais//42209:/usr/bin/zsh | else | edit term:///mnt/Projects/Web/revision-francais//42209:/usr/bin/zsh | endif
if &buftype ==# 'terminal'
  silent file term:///mnt/Projects/Web/revision-francais//42209:/usr/bin/zsh
endif
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1887 - ((61 * winheight(0) + 31) / 62)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1887
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
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
