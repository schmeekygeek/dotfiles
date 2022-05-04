#
# ~/.bashrc
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'
BOLD=$(tput bold)
ITALIC=$(tput rmul)
NORMAL=$(tput sgr0)

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:$HOME/.local/bin
export PATH=$HOME/.cargo/bin/:$PATH
# export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export JAVA_HOME=/usr/lib/jvm/java-18-openjdk
export ANDROID_SDK_ROOT='/opt/android-sdk'
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin/
export PATH=$PATH:$ANDROID_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/

#Aliases
alias run='./mvnw spring-boot:run'
alias ll='logo-ls -lh'
alias lla='logo-ls -lah'
alias ls='logo-ls'
alias cp='cp -i'
alias gs='git status'
alias wp='cd /E/Java/projects/'
alias eww='~/.bin/eww'
alias neofetch-chika='neofetch --source ~/.config/neofetch/asciis/chika'
alias cls="clear"
alias mysql="mysql -p"
complete -cf sudo

# function to do an ls for each cd
function lcd {
    builtin cd "$@" && ls;
}

PS1='[\u@\h \W]\$ '

#Starship prompt
eval "$(starship init bash)"

# Powerline prompt
colorscript --exec crunchbang-mini
# colorscript --exec panes

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi

# END_KITTY_SHELL_INTEGRATION

###-begin-flutter-completion-###

if type complete &>/dev/null; then
  __flutter_completion() {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           flutter completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -F __flutter_completion flutter
elif type compdef &>/dev/null; then
  __flutter_completion() {
    si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 flutter completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef __flutter_completion flutter
elif type compctl &>/dev/null; then
  __flutter_completion() {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       flutter completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K __flutter_completion flutter
fi

###-end-flutter-completion-###
echo
echo -en "$(tput bold)\033[0;34m$(cat ~/.cache/quote.txt)\033[0m"
echo -en "$(tput rmul)$(tput bold)\033[0;31m\n- $(cat ~/.cache/author.txt)\033[0m$(tput sgr0)"
echo
