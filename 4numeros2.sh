pares=0
impares=0
for i in $(cat numeros.txt); do
    resto=$(($i%2))
    if [ $resto -eq 0 ];then
	pares=$((pares+1))
	echo $i>>pares
    else
	impares=$((impares+1))
	echo $i>>impares
    fi
done
echo "Pares $pares"
cat pares
echo "Impares $impares"
cat impares

    
