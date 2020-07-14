abbr c clear
abbr celar clear
abbr cls clear
abbr x exit
abbr t tree
abbr l exa 
abbr ll 'exa -lah'
abbr rg ripgrep
abbr frc 'vim ~/.config/fish/config.fish'
abbr src 'source ~/.config/fish/config.fish'

set PATH $PATH ~/.cargo/bin

function swp
  sudo apt update -y
  sudo apt full-upgrade -y
  sudo apt autoremove
end
