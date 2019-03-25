contador=1
dia=`cat precipitaciones.txt | head -$contador | tail -1 | awk '{print $1}'`
precip=`cat precipitaciones.txt | head -$contador | tail -1 | awk '{print $2}'`
lineas=`cat precipitaciones.txt | wc -l`
#echo $lineas
#echo $dia
echo $precip

while [ $contador -le $lineas ];do
    contador=$((contador+1))
    dia=`cat precipitaciones.txt | head -$contador | tail -1 | awk '{print $1}'`
    precip=`cat precipitaciones.txt | head -$contador | tail -1 | awk '{print $2}'`
    echo las precipitaciones $precip
    echo los dias $dia
    if [ $precip -le 0 ];then
	if [[ $dia -eq 1 || $dia -eq 8 ]];then
	       echo "El lunes no llovió"
	    elif [[ $dia -eq 2 || $dia -eq 9 ]];then
	       echo "El martes no llovió"
	    elif [[ $dia -eq 3 || $dia -eq 10 ]];then
	       echo "El miércoles no llovió"	    
	    elif [ $dia -eq 4 ];then
	       echo "El jueves no llovió"
	    elif [ $dia -eq 5 ];then
	       echo "El viernes no llovió"
	    elif [ $dia -eq 6 ];then
	       echo "El sábado no llovió"	 
	    elif [ $dia -eq 7 ];then
	    echo "El domingo no llovió"
	fi
    fi
    echo el contador de lineas $contador
    echo las lineas $lineas
    
done

	    
	   
	    
		
