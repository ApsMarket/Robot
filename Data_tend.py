'''
Created on 12 апр. 2017 г.

@author: smiyan.a
'''
import json
import sys
import os
sys.path.append('Second_pr')

descript={}
#path_to_file='C:\\Users\\smiyan.a\\My Documents\\LiClipse Workspace\\Second_pr\\dic.json'
def getdic(path_to_file):
    if os.path.exists(path_to_file):
        f=open(path_to_file, encoding='utf-8')
        h=f.read()
        pretty=json.loads(h)
        return(pretty)