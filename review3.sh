#Taking elements in an aaray
array=(10 30 46 58 84 12 11 100)

maximum=0
for numbers in ${array[@]}; 
do
    #Finding maximum & second maximun number
    if (( $numbers > $maximum )); 
    then 
       secondmaximum=$maximum;
       maximum=$numbers; 
    elif (( $numbers > $secondmaximum && $numbers != $maximum ));
    then
       secondmaximum=$numbers;
    fi;
done

#Printing the maximum & second maximum numbers
echo "Maximum number is:"$maximum
echo "Second Maximum number is:"$secondmaximum
