[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f ~/.bashrc  ]; then
  source ~/.bashrc
fi

# fnm
eval "$(fnm env --multi)"
