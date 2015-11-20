#! /bin/bash
debug=false
quiet=false
verbose=false
force=false

humanReadable=false
while getopts "i:o:dqvfh" opt; do
    case $opt in
        d)
            debug=true
            ;;
        q)
            quiet=true
            ;;
        v)
            verbose=true
            ;;
        i)
            input=$OPTARG
            ;;
        o)
            output=$OPTARG
            ;;
        h)
            humanReadable=true
            ;;
        f)
            force=true
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            exit 1
            ;;
    esac
done
echo $input
       

