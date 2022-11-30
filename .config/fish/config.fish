if status is-interactive
    # Commands to run in interactive sessions can go here
        fish_vi_key_bindings   

    # Personal Aliases
        alias s="cd ~/.local/share/scripts && uu-ls --group-directories-first -h -p --color -F"
        alias d="disown"
        alias c="cal"
        alias w="curl wttr.in"
        alias x="startx"

    # Pomodoro Timer Aliases | Inspired by @bashbunni Timer by @caarlos0
        alias work="timer 30m && notify-send \
        'Pomodoro' 'Work Timer is up! Take a Break 😊' -i \
        ~/.cache/pomo/pomo-tomato.png -t 30000 -w -A 'Dismiss'\
        & disown; mpv '/home/kylert/.cache/pomo/pomo-sound.mp3'"
        
        alias rest="timer 10m && notify-send \
        'Pomodoro' 'Break is over! Get back to work 😬' -i \
        ~/.cache/pomo/pomo-tomato.png -t 30000 -w -A 'Dismiss'\
        & disown; mpv '/home/kylert/.cache/pomo/pomo-sound.mp3'"

    # Command Substitutions | I'm trying out the Rust Coreutils Re-write via the coreutils-hybrid package
        alias echo="uu-echo"
        alias ls="uu-ls --group-directories-first -h -p --color -F"
        alias pwd="uu-pwd"
        alias groups=uu-groups
        alias kill=uu-kill

        # Plan9 Utils Command Substitutions
        alias sort="9 sort"
        alias grep="9 grep"

    # Environment Variable Declarations
        export PF_INFO="ascii title os kernel uptime pkgs memory"

    # LESS TERMCAP Variables (for colored man pages)
        set -gx LESS_TERMCAP_mb \e'[1;32m'
        set -gx LESS_TERMCAP_md \e'[1;32m'
        set -gx LESS_TERMCAP_me \e'[0m'
        set -gx LESS_TERMCAP_se \e'[0m'
        set -gx LESS_TERMCAP_so \e'[01;31m'
        set -gx LESS_TERMCAP_ue \e'[0m'
        set -gx LESS_TERMCAP_us \e'[1;4;33m'
    
end
