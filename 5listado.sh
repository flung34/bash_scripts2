for i in $(cat listado.txt | awk '{print $0}');do
    echo $i
    echo fin de i 
done
