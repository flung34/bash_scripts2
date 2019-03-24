cuenta_linux=0
procesos=`echo $(cat listado.txt | awk '{print $3}')`
cuenta_windows=0
procesos_windows=0
cuenta_mac=0
echo $procesos
so=`echo $(cat listado.txt | awk '{print $2}')`
for i in $so;do
    if [ "$i" == "Linux" ];then
	cuenta_linux=`expr $cuenta_linux + 1`
	procesos_linux=$((procesos_linux+procesos))
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
echo "Procesos de Linux $procesos_linux"
echo Usuarios de Windows $cuenta_windows
echo Usuarios de Apple $cuenta_mac
    
