opcja=$1
nazwa=$0

logs ()
{
    if [ -z $1 ]
    then
        i=100
    else
        i=$1
    fi

    while [ $i -gt "0" ] 
    do
        echo "log$i.txt, $nazwa, $(date)" >> log$i.txt
        i=$(( $i - 1 ))
    done
}

case "$opcja" in
    "--date") date;;
    "--logs") logs $2;;
    "--help") help;;
esac
