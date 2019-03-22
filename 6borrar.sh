carpeta=$1
ver=`ls $carpeta`
ubicacion=`echo readlink -f $1`
echo $ubicacion
cd `$ubicacion`
echo pwd
for i in $ver;do
    nombres=`echo $i`
    if [ ${nombres: -3} == 'txt' ]; then
	echo "voy a borrar el archivo $i"
        rm $i
    fi
done

