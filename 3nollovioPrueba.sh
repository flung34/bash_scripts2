contarlinea=0
for i in $(cat precipitaciones.txt | awk '{print $2}'); do
    contarlinea=$((contarlinea+1))
    echo las líneas se están contando. Valor de vble contarlinea: $contarlinea
    echo esto es lo que te dice la línea.Valor de i: $i
    if [ $i -le 1 ]; then
	echo "--------------IF---------------------------------"
	echo Ha entrado en el if, luego i tiene que valer 0.
	echo VALOR DE I: $i
	echo "--------------------------------------------------"
	echo en la línea siguiente aparece echo head contarlinea
	echo VALOR DE CONTARLINEA: $contarlinea
	echo "--------------------------------------------------"
	echo $(cat precipitaciones.txt | head -$contarlinea| tail -1)
	numerodia=`echo $(cat precipitaciones.txt | head -$contarlinea| tail -1 | awk '{print $1}')`
	echo Esto es el numero de día comprueba que se corresponde con la primera columna de la línea anterior. NUMERO DE DÍA: $numerodia
	if [ $numerodia -eq 1 ];then
	    echo "El lunes no ha llovido"
	elif [ $numerodia -eq 2 ];then
	    echo "El martes no ha llovido"
	elif [ $numerodia -eq 3 ];then
	    echo"IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII"
	    echo "El miércoles no ha llovido"
	elif [ $numerodia -eq 4 ];then
	    echo"IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII"
	    echo "El jueves no ha llovido"
	elif [ $numerodia -eq 5 ];then
	    echo"IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII"
	    echo "El viernes no ha llovido"
	elif [ $numerodia -eq 6 ];then
	    echo"IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII"
	    echo "El sábado no ha llovido"
	else
	    echo"IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII"
	    echo "El domingo no ha llovido"
	fi
    fi
done
