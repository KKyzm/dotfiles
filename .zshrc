# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/yaniru/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


if [[ ! -d ~/.local/share/ohmyzsh-master ]]; then
  git clone --branch master --single-branch https://github.com/ohmyzsh/ohmyzsh.git ~/.local/share/ohmyzsh-master
fi
# init ohmyzsh and theme
source ~/.local/share/ohmyzsh-master/oh-my-zsh.sh
# source ~/.local/share/ohmyzsh-master/themes/amuse.zsh-theme
# source ~/.local/share/ohmyzsh-master/themes/afowler.zsh-theme
source ~/.local/share/ohmyzsh-master/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
# plugins
source ~/.local/share/ohmyzsh-master/plugins/gitignore/gitignore.plugin.zsh
source ~/.local/share/ohmyzsh-master/plugins/z/z.plugin.zsh
source ~/.local/share/ohmyzsh-master/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.local/share/ohmyzsh-master/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval $(thefuck --alias)

alias proch="proxychains4"
alias l="exa -al --icons"
alias ls="exa -a --icons"
alias trans="trans"
alias transb="trans --brief"
alias tranz="trans :zh-CN"
alias tranzb="trans :zh-CN --brief"
alias trp="trash-put"
alias trl="trash-list"
alias trr="trash-restore"
alias tre="trash-empty --trash-dir=~/.local/share/Trash"
alias trm="trash-rm"
alias s="screenfetch"
alias fzfb="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
alias ff="fuck"
alias le="leetcode"
alias e="exit"
alias q="exit"
alias c="clear"
alias ra="ranger"
alias conf='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export PATH=/opt/others/bin:/home/yaniru/.local/bin/myscripts:$PATH
export NEMU_HOME=/home/yaniru/workshop/projects/ics2021/nemu
export AM_HOME=/home/yaniru/workshop/projects/ics2021/abstract-machine
export REPO_DIR=/home/yaniru/workshop/projects/CS61B-sp21

# config proxy
# export http_proxy='127.0.0.1:9981'
# export https_proxy='http://127.0.0.1:9981'

# config lvim path
export LUNARVIM_RUNTIME_DIR="${LUNARVIM_RUNTIME_DIR:-"/home/yaniru/.local/share/lunarvim"}"
export LUNARVIM_CONFIG_DIR="${LUNARVIM_CONFIG_DIR:-"/home/yaniru/.config/lvim"}"
export LUNARVIM_CACHE_DIR="${LUNARVIM_CACHE_DIR:-"/home/yaniru/.cache/lvim"}"
export LUNARVIM_BASE_DIR="${LUNARVIM_BASE_DIR:-"/home/yaniru/.local/share/lunarvim/lvim"}"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
