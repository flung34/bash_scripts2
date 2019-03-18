numerolineas=`wc -l precipitaciones.txt | awk '{print $1}'`
echo $numerolineas
sumaprecip=0
for i in $(cat precipitaciones.txt | awk '{print $2}');do
    echo $i
    sumaprecip=$((sumaprecip+i))
done
echo $sumaprecip
mediaprecip=`echo "scale=2; $sumaprecip/$numerolineas" | bc `
echo $mediaprecip
