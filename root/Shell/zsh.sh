function szsh {
  source $HOME/.zshrc
}

function nzsh {
  nano $HOME/.zshrc
}

function clzhist {
  mv .zsh_history .zsh_history_bad
  strings .zsh_history_bad > .zsh_history
  fc -R .zsh_history
}

function clbhist {
  mv .bash_history .bash_history_bad
  strings .bash_history_bad > .bash_history
  fc -R .bash_history
}
