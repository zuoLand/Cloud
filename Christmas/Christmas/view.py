# -*- coding: utf-8 -*-
 
from django.http import HttpResponse
from django.shortcuts import render

from ChristmasModel.models import RefModel
from ChristmasModel.models import WorkModel
 
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
