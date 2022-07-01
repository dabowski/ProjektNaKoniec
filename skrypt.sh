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
        echo "$2$i.txt, $nazwa, $(date)" >> $2$i.txt
        i=$(( $i - 1 ))
    done
}

init ()
{
    git clone https://github.com/dabowski/ProjektNaKoniec
    PATH="$PATH:${pwd}/ProjektNaKoniec"
}

help ()
{
    echo "--date | -d - wyświetla dzisiejszą datę i godzinę"
    echo "--logs | -l - tworzy 100 plików logx.txt (x to liczba od 1 do 100)"
    echo "--logs n | -l n- tworzy n plików logx.txt (x to liczba od 1 do n)"
    echo "--error | -e - tworzy 100 plików errorx.txt (x to liczba od 1 do 100)"
    echo "--error n | -e n- tworzy n plików errorx.txt (x to liczba od 1 do n)"
    echo "--help | -h - wyświetla opcje"
}

case "$opcja" in
    "--date" | "-d") date;;
    "--logs" | "-l") logs $2 "log";;
    "--error" | "-e") logs $2 "error";;
    "--help" | "-h") help;;
esac
