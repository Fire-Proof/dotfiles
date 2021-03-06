if type -q nvim
    alias vim nvim
end

if type -q devenv
    abbr de "devenv"
    abbr shop "devenv"
    abbr flex "devenv --flex"
    abbr all "devenv -s all"
    function shell --argument-names 'shop'
        if set -q $argv[1]
            set shop billigvvs.dk
        end
        devenv -s $shop django manage shell_plus
    end
    function logs --argument-names 'shop'
        if set -q $argv[1]
            set shop billigvvs.dk
        end
        devenv -s $shop django logs
    end
end

if type -q snap
    set PYCHARM_SNAP (snap list | grep 'pycharm' | awk '{ print $1 }')
    if test -n "$PYCHARM_SNAP"
        alias pycharm "snap run $PYCHARM_SNAP"
    end
end

if type -q to
    abbr z "to"
end
