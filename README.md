# Naromil's Neovim Configuration.

Hello, world!

## Installation

#### Prerequisites
- `xclip`
- `wl-clipboard`
- `lolcat`

> Linux

```shell
bash <(curl https://raw.githubusercontent.com/naromil/nvim/refs/heads/main/install.sh)
```

> Windows

```shell
To be continued.
```

## Shortcut Keys

`<F9>`:
* Save and compile(g++) and run.
* Exit `TERMINAL` mode.

`:BE`: Save and compile(g++) and run.

`:CP`: Copy all.

## Alternative as Vim

For `~/.vimrc`,

```vimscript
set number
set tabstop=4
set shiftwidth=4
set cindent
set autoindent
syntax on
colorscheme zaibatsu
" Other recommended colorschemes: elflord, industry, koehler, torte, ron, wildcharm.

command BE w|exec '!g++ % -o %< -Wall -O2 -std=c++17'|exec '!./%<'
map <F9> :!clear<CR><CR>:BE<CR><CR>

command CP w|exec '!cat % | xclip -selection clipboard'
```
