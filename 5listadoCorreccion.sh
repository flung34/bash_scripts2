contador=1
max=`cat listado.txt | wc -l`
echo Este es el total de líneas $max
procesoslinux=0
usuarioslinux=0
procesoswindows=0
procesoslinux=0
while [ $contador -le $max ]; do
    linea=`cat listado.txt | head -$contador | tail -1`
    sistema=`echo $linea | awk '{print $2}'`
    procesos=`echo $linea | awk '{print $3}'`

    if [ $sistema = "Linux" ];then
	usuarioslinux=$((usuarioslinux+1))
	procesoslinux=$((procesoslinux+procesos))
    elif [ $sistema = "Windows" ]; then
	usuarioswindows=$((usuarioswindows+1))
	procesoswindows=$((procesoswindows+procesos))
    fi
    contador=$((contador+1))
    echo Este es el contador de líneas $contador
done
echo "Usuarios Linux $usuarioslinux"
echo "Procesos Linux $procesoslinux"
echo "Usuarios Windows $usuarioswindows"
echo "Procesos Windows $procesoswindows"

    
