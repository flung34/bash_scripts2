cuenta_linux=0
cuenta_windows=0
cuenta_mac=0
so=`echo $(cat listado.txt | awk '{print $2}')`
for i in $so;do
    if [ "$i" == "Linux" ];then
	cuenta_linux=`expr $cuenta_linux + 1`
    elif [ "$i" == "Windows" ];then
	cuenta_windows=$((cuenta_windows+1))
    else
	cuenta_mac=`expr $cuenta_mac + 1`
    fi
done

for i in $so;do
    echo $i
done
echo $so
echo Usuarios de Linux $cuenta_linux
echo Usuarios de Windows $cuenta_windows
echo Usuarios de Apple $cuenta_mac
    
