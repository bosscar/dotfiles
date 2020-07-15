stty sane
fish_vi_key_bindings
set fish_greeting

# bind
bind \ce end-of-line accept-autosuggestion
if bind -M insert > /dev/null 2>&1
  bind -M insert \ce end-of-line accept-autosuggestion
end

abbr c clear
abbr celar clear
abbr cls clear
abbr x exit
abbr t tree
abbr tm tmux
abbr l exa 
abbr ll 'exa -lah'
abbr v vim
abbr h htop
abbr go gotop
abbr gl glances
abbr rg ripgrep
abbr frc 'vim ~/.config/fish/config.fish'
abbr src 'source ~/.config/fish/config.fish'
alias ..="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."
alias .6="cd ../../../../../.."
alias .7="cd ../../../../../../.."
alias ls='~/bin/exa --group-directories-first'
alias fzf='/usr/bin/fzf'
alias fzf-tmux='/usr/bin/fzf-tmux'
alias freeram='echo 3 | sudo tee /proc/sys/vm/drop_caches'

export TERM=xterm-256color

set PATH $PATH ~/.cargo/bin

function swp
  sudo apt update -y
  sudo apt full-upgrade -y
  sudo apt autoremove
end

if set -q TMUX; tmux setenv TMUXPWD_(tmux display -p "#D" | tr -d '%') $PWD; end
