ruta_anterior=`pwd`
ruta_buena=$ruta_anterior/$1
cd $1
rutaactual=`pwd`
contador=0
if [ $ruta_buena = $rutaactual ]; then
    for i in `ls -l | grep .txt`; do
	rm $i
	contador=`expr $contador +1`
    done
    echo "Se han borrado $contador ficheros"
else
    echo "El directorio no existe"
fi
