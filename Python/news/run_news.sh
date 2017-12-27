#!/bin/bash

#curTime=$(date "+%Y%m%d%H%M%S")
curDate=$(date "+%Y%m%d")
curTime=$(date "+%Y%m%d%H%M")

baseDir=/opt/logs/python/news/



if [ ! -f $baseDir/Tencent.$curDate ] ; then
    touch $baseDir/Tencent.$curDate
fi
python news.py 'http://news.qq.com' 'div.text > em.f14 > a.linkto' 'Tencent' $curTime $baseDir/Tencent.$curTime

cat $baseDir/Tencent.$curTime >> $baseDir/Tencent.$curDate

newsSize=$(wc -l $baseDir/Tencent.$curTime | awk '{print $1}')

echo "Tencent $curTime  $newsSize Down">> $baseDir/run.log

rm -rf $baseDir/Tencent.$curTime



