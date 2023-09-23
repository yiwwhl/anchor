# ——————————————————————————————————————— System Settings ————————————————————————————————————————

# Network Proxy
export https_proxy=http://127.0.0.1:8888
export http_proxy=http://127.0.0.1:8888
export all_proxy=socks5://127.0.0.1:8889

# System Alias
alias tree="exa -T"
alias ls="lsd"
alias ll="lsd -l"
alias vi="nvim"
alias vim="nvim"
alias c="code ."
alias ct="tmux new -s yiwwhl"
alias t="tmux attach -t yiwwhl"
alias d="tmux detach"
alias yp="ssh -f -NR 8889:localhost:8889 yiwwhl && ssh -f -NR 8889:localhost:8889 yiwwhl"
alias wx="nohup /Applications/WeChat.app/Contents/MacOS/WeChat > /dev/null 2>&1 &"
alias rcset="rcup -v"
alias lg="lazygit"

# ———————————————————————————————————————— Software Configs ———————————————————————————————————————

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
git
zsh-autosuggestions
)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source $ZSH/oh-my-zsh.sh

# Sase
export MY_PING_PATH=/Applications/SASE.app/Contents/Services
export PATH=${MY_PING_PATH}:$PATH

# ———————————————————————————————————— Develop Environments ——————————————————————————————————————

# Bun
[ -s "/Users/yiwwhl/.bun/_bun" ] && source "/Users/yiwwhl/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Cargo
export PATH="/Users/yiwwhl/.cargo/bin:$PATH"

# Fnm
eval "$(fnm env --use-on-cd)"