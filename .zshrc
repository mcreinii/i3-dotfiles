# Lines configured by zsh-newuser-install
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval $(dbus-launch --sh-syntax)
fi

alias scratch="nvim notes/$(date +"%A-%Y-%m-%d").md"

dl-music() {
  if [ -z "$1" ]; then
    echo "Usage: dl-music <url>"
    return 1
  fi

  mkdir -p ~/Music
  yt-dlp -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '~/Music/%(title)s.%(ext)s' "$1"
  notify-send "%(title)s downloaded"
}

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/reini/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(starship init zsh)"
