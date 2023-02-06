# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
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
alias neo=' WINIT_UNIX_BACKEND=x11 neovide-lunarvim'
source /usr/share/nvm/init-nvm.sh
# Enable syntax highlighting.
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Enable autosuggestions.
source ~/zsh-autosuggestions/zsh-autosuggestions.zsh

# End of lines added by compinstall
# K8s auto-complete
# autoload -U +X compinit && compinit
# source <(kubectl completion zsh)




# Load Angular CLI autocompletion.
# source <(ng completion script)
