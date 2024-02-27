# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000000
SAVEHIST=100000000
bindkey -e
autoload -Uz compinit && compinit
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# zstyle :compinstall filename '/home/akshayk/.zshrc'
PATH=$HOME/.local/bin:$PATH
PATH=/opt/rocm/bin:$PATH
neowofetch -b fastfetch
eval "$(starship init zsh)"
PROMPT_EOL_MARK=''
alias dt='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias neo='neovide --no-fork'
alias k='kubectl'
source /usr/share/nvm/init-nvm.sh
export XDG_CURRENT_DESKTOP=GNOME
# export NPM_CONFIG_PREFIX=~/.npm-global
# Enable syntax highlighting.
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Enable autosuggestions.
source ~/zsh-autosuggestions/zsh-autosuggestions.zsh
# End of lines added by compinstall
# K8s auto-complete
# autoload -U +X compinit && compinit
# source <(kubectl completion zsh)



alias sudo='nocorrect sudo -E '

# Load Angular CLI autocompletion.
# source <(ng completion script)

export PATH="/home/akshayk/.detaspace/bin:$PATH"

# bun completions
[ -s "/home/akshayk/.bun/_bun" ] && source "/home/akshayk/.bun/_bun"
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/home/akshayk/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export KUBECONFIG=~/.kube/config

