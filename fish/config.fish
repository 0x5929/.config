if status is-interactive
    # Commands to run in interactive sessions can go here
    # set global editor to NVIM
    set -gx EDITOR nvim
  
    # aliases
    alias vim=nvim
    alias update='sudo apt update; sudo apt list --upgradable'
    alias upgrade='sudo apt upgrade -y'
    alias pcode='cd /home/kevin/Dev/'
    alias google-dev='google-chrome --disable-web-security --user-data-dir=/tmp'

    # initialize environments
    status --is-interactive; and ~/.rbenv/bin/rbenv init - fish | source

    # export environment variables
    set -g -x POSTGRES_DATABASE_USERNAME kevin
    set -g -x POSTGRES_DATABASE_PASSWORD jordan45
    set -g -x GMAIL_APP_USER 'first.object.oriented@gmail.com'
    set -g -x GMAIL_APP_PW xnnyalrrkjazhmbl

    # vim binding
    # fish_vi_key_bindings
    fish_default_key_bindings

    # set up for home dual monitor
    xrandr --output DP-1-1.2 --primary --mode 3840x1080 --rate 59.97 --output DP-1-1.3 --mode 1920x1080 --rate 59.94 --rotate left --right-of DP-1-1.2
end
