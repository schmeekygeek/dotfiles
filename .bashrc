# ~/.bashrc
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'
BOLD=$(tput bold)
ITALIC=$(tput rmul)
NORMAL=$(tput sgr0)

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export BROWSER="min"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export EXA_ICON_SPACING=2
export PATH=$PATH:$HOME/.local/bin
export PATH=$HOME/.cargo/bin/:$PATH
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export JDTLS_JVM_ARGS="-Xms256m \
  -Xmx512m
  -javaagent:$HOME/Downloads/lombok.jar"
export ANDROID_SDK_ROOT='/opt/android-sdk'
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin/
export PATH=$PATH:$ANDROID_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/
export TERM="xterm-256color"
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
alias ka='killall'
alias screenkey='screenkey -s small --opacity 0.5 -g 300x840 --font JetBrainsMono --bg-color black --font-color white'
alias ns='exa --git --no-user'
alias nn='ns -l'
alias nna='ns -la'
alias cp='cp -i'
alias mv='mv -i'
alias wp='cd ~/F/kaizen'
alias bp='cd ~/E/Java/projects/spring/RecipExBackend/'
alias eww='~/.bin/eww'
alias neofetch-chika='neofetch --source ~/.config/neofetch/asciis/chika'
alias mysql="mysql -p"
alias bat="bat --theme gruvbox-dark"
alias start-feh-blur="feh-blur --blur 4 --darken 4 -d"
alias nl="notify-send --urgency=low \"Done\""
alias nm="notify-send --urgency=normal \"Done\""
alias nh="notify-send --urgency=critical \"Pwease hurry, senpaii!! >~<\""
alias grep="rg"
alias bf="bat \`fzf\`"
alias vf="vim \`fzf\`"
alias cr="cargo run"
alias cb="cargo build"

# git aliases
alias lg='lazygit'
alias gs='git status'
alias gc='git commit -m'
alias gp='git push'
alias ga='git add'

complete -cf sudo

_fzf_complete_vim() {
  _fzf_complete --multi --reverse --prompt="vim> " -- "$@" < <(
    echo very
  )
}

# function to run and detach processes from the terminal
detach () {
  ( "$@" &> /dev/null & disown )
}

PS1='[\u@\h \W]\$ '

# Starship prompt
eval "$(starship init bash)"

colorscript --exec crunchbang-mini
# colorscript --exec panes
# colorblocks
echo
echo -en "${RED}\e[3m❤ $(cat ~/.cache/qwote.txt) ❤\e[0m${NC}"
echo -en "\n${BLUE}\e[3m- $(cat ~/.cache/author.txt)\e[0m${NC}"
echo
# cowsay `fortune -n 160`
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
