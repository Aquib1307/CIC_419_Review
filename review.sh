palindrome()
{
 num=$1
 temp=$1

 while [ $num -gt 0 ]
 do
    s=$(($num%10))
    num=$(($num/10))
    rev=$( echo ${rev}${s} )
 done

if [ $temp -eq $rev ];
then
  echo 1
  exit
fi
echo 0
}

read -p "Enter the range" range

for((i=1;i<=range;i++))
do
        isPalindrome=$(palindrome $i);
        if [ $isPalindrome -eq 1 ]
        then
           echo $i
        fi
done
