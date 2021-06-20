#!/bin/bash



#Variables
nums=$(echo{0..9})
states=('California' 'Colorado' 'Alaska' 'Hawaii' 'New York')


#for loop hawaii
for favstate in ${states[@]};
do
	if [ $state == 'Hawaii' ]
	then 
	echo "Hawaii is the best!"
	else
	echo "I'm not fond of Hawaii"
	fi
done

#for loop nums
for num in ${nums[@]};
do
 new_num=$(($num + 2))
 echo $new_num
done



