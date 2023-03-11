if status is-interactive
    # Commands to run in interactive sessions can go here
    # set global editor to NVIM
    set -gx EDITOR nvim
  
    # aliases
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
    fish_vi_key_bindings
end
