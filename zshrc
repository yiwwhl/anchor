# ———————————————————————————————————————— Software Configs ———————————————————————————————————————

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
git
zsh-autosuggestions
copypath
copyfile
copybuffer
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

# Fnm
eval "$(fnm env --use-on-cd)"

# Pnpm
export PNPM_HOME="/Users/yiwwhl/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# Pnpm End

# Cargo
export PATH="$HOME/.cargo/bin:$PATH"
# Cargo End
# ——————————————————————————————————————— System Settings ————————————————————————————————————————

# Network Proxy
export https_proxy=http://127.0.0.1:6152
export http_proxy=http://127.0.0.1:6152
export all_proxy=socks5://127.0.0.1:6153

# System Alias
alias ls="lsd"
alias ll="lsd -l"
alias c="windsurf ."
alias w="windsurf ."
alias ct="tmux new -s yiwwhl"
alias t="tmux attach -t yiwwhl"
alias d="tmux detach"
alias yp="ssh -f -NR 8888:localhost:8888 yiwwhl && ssh -f -NR 8889:localhost:8889 yiwwhl"
alias wx="nohup /Applications/WeChat.app/Contents/MacOS/WeChat > /dev/null 2>&1 &"
alias rcset="rcup -v"
alias vi="nvim"
alias vim="nvim"
alias cd="z"

# Added by Windsurf
export PATH="/Users/yiwwhl/.codeium/windsurf/bin:$PATH"

# Added by Windsurf
export PATH="/Users/yiwwhl/.codeium/windsurf/bin:$PATH"

# Zoxide
eval "$(zoxide init zsh)"
