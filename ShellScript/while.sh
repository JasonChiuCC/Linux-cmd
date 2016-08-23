#!/bin/sh
c=1
while [ $c -le 5 ]
do
	echo "Welcone $c times"	
    let ++c
    
    d=1
    while [ $d -le 5 ]
    do
        echo "==== $d ===="        
        let ++d
    done
done
