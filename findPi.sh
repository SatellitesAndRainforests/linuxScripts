#!/bin/bash

max=30;
user="pi"

echo ""
echo "  finding   $user "
echo ""

for (( count=1; count<=max; count++ ))
do

  echo "    trying    $user     @       192.168.1.$count" 

  ssh -o ConnectTimeout=3 $user@192.168.1.$count 'hostname; exit' > /dev/null 2>&1

  if [ $? -eq 0 ]; then
    ssh $user@192.168.1.$count
    break
  fi

done

