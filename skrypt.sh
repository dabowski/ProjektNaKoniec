opcja=$1
nazwa=$0

logs ()
{
    i=100
    while [ $i -gt "0" ] 
    do
        echo "log$i.txt, $nazwa, $(date)" >> log$i.txt
        i=$(( $i - 1 ))
    done
}

case "$opcja" in
    "--date") date;;
    "--logs") logs;;
    "--help") help;;
esac
