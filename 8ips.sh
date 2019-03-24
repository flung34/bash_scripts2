ip="192.168.1."
contador=0

echo "Listado de IPs:"
for i in `seq 2 254`; do
    correctos =`ping -c 1 $ip$i | grep received | awk '{print $4}'`
    echo $correctos
    if [ $correctos -gt 0 ]
    then
	echo $pi$i
    fi
done
