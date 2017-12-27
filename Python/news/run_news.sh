#!/bin/bash

#curTime=$(date "+%Y%m%d%H%M%S")
curTime=$(date "+%Y%m%d%H%M")


python news.py 'http://news.qq.com' 'div.text > em.f14 > a.linkto' 'Tencent' $curTime ./data/Tencent.$curTime
newsSize=$(wc -l ./data/Tencent.$curTime | awk '{print $1}')
echo "Tencent $curTime  $newsSize Down">>run.log





#while read line 
#do
#    
#    targetName=$(echo $line|awk -F ';' '{print $1}');
#    targetUrl=$(echo $line|awk -F ';' '{print $2}');
#    targetTitle=$(echo $line|awk -F ';' '{print ''''$3''''}');
#    
#    targetFile=./data/$targetName.$curTime.data
#    touch $targetFile
#    python news.py $targetUrl $targetTitle $targetName $curTime $targetFile
#    
#    size=$(wc -l $targetFile | awk '{print $1}')
#    echo  "$curTime $targetName $targetUrl $targetTitle $size Done" >> ./logs/run.log
#
#done < target.list
