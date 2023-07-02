if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr ls lsd
abbr xclips "xclip -selection clipboard <"
alias gpp 'gcc $argv -Wall && ./a.out'
alias gp+ 'g++ $argv -Wall && ./a.out'


set -U fish_user_paths /home/ardririy/.cargo/bin $fish_user_paths
