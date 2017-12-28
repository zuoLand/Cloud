#!/bin/sh


#curDate=$(date "+%Y%m%d" -d "-1 days")
curDate=$(date "+%Y%m%d" )

logsBaseDir=/opt/logs/python/

newsBaseDir=/opt/logs/python/news/
doubanBaseDir=/opt/logs/python/douban/

#------------------------------------------------------------------------
echo "<!DOCTYPE html>" >> $newsBaseDir/Tencent_News_$curDate.html
echo "<head>" >> $newsBaseDir/Tencent_News_$curDate.html
echo "<meta charset=utf-8/> " >>  $newsBaseDir/Tencent_News_$curDate.html
echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /> " >>  $newsBaseDir/Tencent_News_$curDate.html
echo "</head>" >> $newsBaseDir/Tencent_News_$curDate.html
echo "<body>" >> $newsBaseDir/Tencent_News_$curDate.html
cat $newsBaseDir/Tencent.$curDate|sort -u > $newsBaseDir/Tencent_News_$curDate.html
echo "</body>" >> $newsBaseDir/Tencent_News_$curDate.html
echo "</html>" >> $newsBaseDir/Tencent_News_$curDate.html


#------------------------------------------------------------------------
echo "<!DOCTYPE html>" >> $newsBaseDir/WeiBo_News_$curDate.html
echo "<head>" >> $newsBaseDir/WeiBo_News_$curDate.html
echo "<meta charset=utf-8/> " >>  $newsBaseDir/WeiBo_News_$curDate.html
echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /> " >>  $newsBaseDir/WeiBo_News_$curDate.html
echo "</head>" >> $newsBaseDir/WeiBo_News_$curDate.html
echo "<body>" >> $newsBaseDir/WeiBo_News_$curDate.html
cat $newsBaseDir/WeiBo.$curDate|sort -u > $newsBaseDir/WeiBo_News_$curDate.html
echo "</body>" >> $newsBaseDir/WeiBo_News_$curDate.html
echo "</html>" >> $newsBaseDir/WeiBo_News_$curDate.html



#------------------------------------------------------------------------
echo "<!DOCTYPE html>" >> $doubanBaseDir/DouBan_$curDate.html
echo "<head>" >> $doubanBaseDir/DouBan_$curDate.html
echo "<meta charset=utf-8/> " >>  $doubanBaseDir/DouBan_$curDate.html
echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /> " >>  $doubanBaseDir/DouBan_$curDate.html
echo "</head>" >> $doubanBaseDir/DouBan_$curDate.html
echo "<body>" >> $doubanBaseDir/DouBan_$curDate.html
cat $doubanBaseDir/DouBan.20171227.Code|sort -u > $doubanBaseDir/DouBan_$curDate.html
echo "</body>" >> $doubanBaseDir/DouBan_$curDate.html
echo "</html>" >> $doubanBaseDir/DouBan_$curDate.html

#-------------------------------------------------------------------------
imgIndex=$(date +"%d" | awk '{if(substr($0,0,1)==0){print substr($0,2,1)}else{print $0}}')
echo "腾讯新闻$curDate" | mailx -v -s "TencentNews_$curDate" -a $newsBaseDir/Tencent_News_$curDate.html -a $newsBaseDir/WeiBo_News_$curDate.html -a $doubanBaseDir/DouBan_$curDate.html -a ./picture/$imgIndex.jpg chunyuan2008@163.com



rm -rf $newsBaseDir/Tencent_News_$curDate.html 
rm -rf $newsBaseDir/WeiBo_News_$curDate.html
rm -rf $doubanBaseDir/DouBan_$curDate.html
