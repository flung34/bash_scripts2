contarlinea=0
for i in $(cat precipitaciones.txt | awk '{print $2}'); do
    contarlinea=$((contarlinea+1))
    if [ $i -le 1 ]; then
	numerodia=`echo $(cat precipitaciones.txt | head -$contarlinea| tail -1 | awk '{print $1}')`
	if [ $numerodia -eq 1 ];then
	    echo "El lunes no ha llovido"
	elif [ $numerodia -eq 2 ];then
	    echo "El martes no ha llovido"
	elif [ $numerodia -eq 3 ];then
	    echo "El miércoles no ha llovido"
	elif [ $numerodia -eq 4 ];then
	    echo "El jueves no ha llovido"
	elif [ $numerodia -eq 5 ];then
	    echo "El viernes no ha llovido"
	elif [ $numerodia -eq 6 ];then
	    echo "El sábado no ha llovido"
	else
	    echo "El domingo no ha llovido"
	fi
    fi
done

