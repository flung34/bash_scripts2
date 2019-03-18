direcs=$1
j=1
for i in $(cat nombres.txt);do
    mkdir /home/fran/Escritorio/"$i";
    echo "Creado directorio $i"
    while [ $j -le $direcs ]; do
	  mkdir /home/fran/Escritorio/"$i"/"personal${j}"
	  j=$((j+1))
	  echo "Creado directorio personal${j}"
    done
    j=1
done
