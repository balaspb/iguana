#!/bin/bash
#Author:bala
#Date:06/06/2019
#Description:this is for and opreartion
#modified:09/06/2019
 if [[ -n $1 ]] && [[ -d $1 ]]
  then
   echo "you have entered directory path and taking backup"
  tar -cvzf backupdir.tgz $1

 elif [[ -n $1 ]] && [[ -e $1 ]]
   then 
     echo "you have enterd file path and its taking backup"
   tar -cvzf backupfil.tgz $1
elif [[ -z $1 ]]
 then
   echo "you havn't enter any input"
else 
  echo "you have entered invalid input pls retry"
fi

     
