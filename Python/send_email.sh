#!/bin/sh


curDate=$(date "+%Y%m%d" -d "-1 days")

logsBaseDir=/opt/logs/python/

newsBaseDir=/opt/logs/python/news/



echo "<!DOCTYPE html>" >> $newsBaseDir/Tencent_News_$curDate.html
echo "<head>" >> $newsBaseDir/Tencent_News_$curDate.html
echo "<meta charset=utf-8/> " >>  $newsBaseDir/Tencent_News_$curDate.html
echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /> " >>  $newsBaseDir/Tencent_News_$curDate.html
echo "</head>" >> $newsBaseDir/Tencent_News_$curDate.html
echo "<body>" >> $newsBaseDir/Tencent_News_$curDate.html
cat $newsBaseDir/Tencent.$curDate|sort -u > $newsBaseDir/Tencent_News_$curDate.html
echo "</body>" >> $newsBaseDir/Tencent_News_$curDate.html
echo "</html>" >> $newsBaseDir/Tencent_News_$curDate.html


echo "腾讯新闻$curDate" | mailx -v -s "TencentNews_$curDate" -a $newsBaseDir/Tencent_News_$curDate.html chunyuan2008@163.com




