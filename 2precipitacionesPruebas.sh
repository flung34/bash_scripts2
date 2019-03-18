cuentalineas=0
numerolineas=`wc -l precipitaciones.txt`
sumaprecipitaciones=0
for i in $(cat precipitaciones.txt);do
    cuentalineas=$((cuentalineas+1))
done
echo "Estas son las líneas que me cuenta el bucle for: $cuentalineas"
echo "Estas son las líneas que me cuenta wc -l: $numerolineas"

unalinea=`cat precipitaciones.txt | awk '{print $0}'`

for i in $(cat precipitaciones.txt); do
    echo "$i | awk '{print $1}'"
    echo "$i | awk '{print $2}'"
      done
