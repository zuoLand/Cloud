# coding:utf-8

import requests
import chardet
import sys
import argparse
from bs4 import BeautifulSoup

reload(sys)
sys.setdefaultencoding('utf-8')
 

targetUrl=sys.argv[1]
targetTitle=sys.argv[2]
targetName=sys.argv[3]
curTime=sys.argv[4]
targetFile=sys.argv[5]

#targetUrl = "http://news.qq.com/"
#targetTitle="div.text > em.f14 > a.linkto"


# 请求腾讯新闻的URL，获取其text文本

wbdata = requests.get(targetUrl).text

# 对获取到的文本进行解析

soup = BeautifulSoup(wbdata,'lxml')

# 从解析文件中通过select选择器定位指定的元素，返回一个列表

news_titles = soup.select(targetTitle)
 
# 对返回的列表进行遍历



with open(targetFile,'w') as f:
    for n in news_titles:
        title = n.get_text()
        b=targetName+" "+curTime+" "+title
        b+="\n"
        f.write(b)

