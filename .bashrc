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

export HELLO="hello"
export PATH=$PATH:$HOME/.local/bin
export PATH=$HOME/.cargo/bin/:$PATH
export JAVA_HOME=/usr/lib/jvm/java-19-openjdk
export JDTLS_JVM_ARGS="-javaagent:$HOME/Downloads/lombok.jar"
export ANDROID_SDK_ROOT='/opt/android-sdk'
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin/
export PATH=$PATH:$ANDROID_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/
export TERM=xterm-256color
export EDITOR=vim
export GITHUB_ACCESS_TOKEN=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
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS"
 --height 60%
 --reverse
 --border
 --color=fg:#e0def4,bg:#1f1d2e,hl:#6e6a86
 --color=fg+:#908caa,bg+:#191724,hl+:#908caa
 --color=info:#9ccfd8,prompt:#f6c177,pointer:#c4a7e7
 --color=marker:#ebbcba,spinner:#eb6f92,header:#ebbcba"
export FZF_COMPLETION_TRIGGER='~~'
export FZF_COMPLETION_OPTS='--border --info=inline'

#Aliases
alias run='./mvnw spring-boot:run'
alias ll='logo-ls -lh'
alias lla='logo-ls -lah'
alias ls='logo-ls'
alias cp='cp -i'
alias wp='cd ~/E/Java/projects/spring/RecipExBackend'
alias eww='~/.bin/eww'
alias neofetch-chika='neofetch --source ~/.config/neofetch/asciis/chika'
alias cls="clear"
alias mysql="mysql -p"
alias bat="bat --theme OneHalfDark"
alias start-feh-blur="feh-blur --blur 4 --darken 4 -d"
alias notif-low="notify-send --urgency=low \"Finished task, uwu\""
alias notif-med="notify-send --urgency=normal \"Done\""
alias notif-high="notify-send --urgency=critical \"Pwease hurry, senpaii!! >~<\""
# alias grep="rg"

# git aliases
alias gs='git status'
alias gc='git commit -m '

complete -cf sudo

# function to do an ls for each cd
function lcd {
    builtin cd "$@" && ls;
}
_fzf_complete_vim() {
  _fzf_complete --multi --reverse --prompt="vim> " -- "$@" < <(
    echo very
  )
}

PS1='[\u@\h \W]\$ '

#Starship prompt
eval "$(starship init bash)"

# Powerline prompt
# colorscript --exec crunchbang-mini
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
# colorscript --exec panes
colorblocks
echo
echo -en "${RED}\e[3m❤ $(cat ~/.cache/qwote.txt) ❤\e[0m${NC}"
echo -en "\n${BLUE}\e[3m- $(cat ~/.cache/author.txt)\e[0m${NC}"
echo
