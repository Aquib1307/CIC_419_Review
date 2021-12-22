read -p "enter range" n
for((i=0;i<=n;i++))
do
  num=$(($i**3))
  echo $num
done
