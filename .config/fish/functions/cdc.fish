function cdc --description 'cd to any saved directory'
    if test (count $argv) -gt 1
        echo "Error: more than one alias provided"
        return 1
    end
    set CDPATH (grep -E "^$argv:" ~/bin/wd | cut -d ':' -f 2)
    if test -z $CDPATH
        echo "alias not found, please add one with cwd"
        return 1
    end
    cd $CDPATH
end
