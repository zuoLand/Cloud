# -*- coding: utf-8 -*-
 
from django.http import HttpResponse
from django.shortcuts import render

from ChristmasModel.models import RefModel
from ChristmasModel.models import WorkModel


import datetime
import calendar
import time
#import Global Personal Setting Variable Parameters
from django.conf import settings

#Def Global Settging Function to get Variable Params from Setting
def global_setting(context):
	context['SITE_ADDRESS_PRE']=settings.SITE_ADDRESS_PRE
	context['SITE_ADDRESS']=settings.SITE_ADDRESS
	context['SITE_NAME']=settings.SITE_NAME
	context['SITE_FOOTER_EMAIL']=settings.SITE_FOOTER_EMAIL
	context['SITE_FOOTER_COMPANY']=settings.SITE_FOOTER_COMPANY



def toIndex(request):
    context          = {}
    global_setting(context)

    return render(request, 'index.html', context)

def toIntroduction(request):
    context          = {}

    global_setting(context)

    return render(request, 'introduction.html', context)


def toWork(request):
    context          = {}

    global_setting(context)

    list=WorkModel.objects.all()
    WorkModel.objects.order_by("id")
    context['WorkModelList']=list
    
    return render(request, 'work.html', context)

def toRef(request):
    context          = {}

    global_setting(context)

    list=RefModel.objects.all()
    RefModel.objects.order_by("id")
    context['RefModelList']=list


    return render(request, 'ref.html', context)

#def toNews(request):
#    context          = {}
#    global_setting(context)
#    #today=time.strftime('%Y%m%d',time.localtime(time.time()))
#    today=datetime.date.today()
#    yesterday=today-datetime.timedelta(days=1)
#    
#    yesterday=yesterday.strftime('%Y%m%d')
#    fileName='/opt/logs/python/news/Tencent.'+str(yesterday)
#    newsContext=""
#    f=open(fileName,'r')
#    line=f.readline()
#    while line:
#        newsContext+=line;
#        line=f.readline()
#    f.close
#    context['news']=newsContext
#    return render(request, 'news.html', context)

import requests
import chardet
import sys
import re
import argparse
import codecs
import json
from bs4 import BeautifulSoup

def toNews(request):
    context = {}
    global_setting(context)
    newscontext=""
    #------------------------
    reload(sys)
    sys.setdefaultencoding('utf-8')
     
    
    targetUrl="http://s.weibo.com/top/summary?cate=realtimehot"
    targetTitle="Refer=top"
    
    
    user_agent = 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT)'  
    headers = { 'User-Agent' : user_agent }  
    wbdata = requests.get(targetUrl,headers=headers).text
    
    soup = BeautifulSoup(wbdata,"lxml")
    news_titles = soup.find_all(href=re.compile(targetTitle),target="_blank")
    
    listA=[]
    for n in news_titles:
        if n.string is not None :
            title = n.get_text()
            link=n.get("href")
            
            data={'title':title,'href':'http://s.weibo.com/'+link}
            listA.append(data)
                         
    #newscontext=json.dumps(listA)
             #newscontext+=" <a href=\"http://s.weibo.com/"+link+"\">"+title+"</a><br/>"
    #context['news']=newscontext
    context['newsList']=listA
    #------------------------
    
    return render(request, 'news.html', context)
