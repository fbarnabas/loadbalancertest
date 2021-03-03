
#!/bin/bash
echo "Hányszor fusson a teszt?"
read x
#echo $x
#for j in {1..20}
for (( j=1; j<x+1; ++j)); do
array=(`curl -s http://team1-1435930522.eu-central-1.elb.amazonaws.com`)
#for i in {0..10}
#do
#        echo $i, ${array[$i]}
#done
#echo ${array[4]}
if [ ${array[4]} = 'Tibix!</title>' ]; then
# echo "Tibix"
 Tibix=$((Tibix+1));
fi

if [ ${array[6]} = '<title>The' ]; then
# echo "Matrix"
 Matrix=$((Matrix+1));
fi
echo $j. Tibix kingdom: $Tibix  Matrix: $Matrix
done
