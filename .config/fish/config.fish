if status is-interactive
  set fish_greeting 
  eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  mise activate fish | source
  export GPG_TTY=(tty)
end

#aliases
alias vi="nvim"
alias g="git"
alias nf="neofetch"
alias ls="eza -G --group-directories-first --icons=always"
alias la="eza -lGa --group-directories-first --icons=always"
alias lsg="eza -laG --group-directories-first --git --icons=always"
alias lst="eza -lTa --group-directories-first --git --icons=always"
alias cat='bat --paging=never'
alias grep="rg"

#cd home and clear
function ccd
  cd ~
  clear
end

# mkdir + cd
function mkcd
  set dirname $argv[1]
  mkdir -p $dirname
  cd $dirname
end
