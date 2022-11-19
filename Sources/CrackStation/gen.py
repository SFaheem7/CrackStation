import string
import re
import math
import hashlib
import json
myDict = {"":""}

def myHash(arr):
	for val in arr:		
		m_Hash = hashlib.sha1(val.encode())
		mHash = hashlib.sha256(val.encode())
		myDict[m_Hash.hexdigest()] = val
		myDict[mHash.hexdigest()] = val
		
str = "abcdefghijklmnopqrstuvwxyzABCDEFIJKGHLMNOPQRSTUVWXYZ0123456789!?";
str2 = "abcdefghijklmnopqrstuvwxyzABCDEFIGJKHLMNOPQRSTUVWXYZ0123456789!?";
str3 = "abcdefghijklmnopqrstuvwxyzABCDEFIGJKHLMNOPQRSTUVWXYZ0123456789!?";  
n = len(str);  
#For holding all the formed substrings  
arr = [];  
   
#This loop maintains the starting character  
for i in range(0,n):
	arr.append(str[i]);

for i in range(0,n):  
    #This loop will add a character to start character one by one till the end is reached  
    for j in range(0,n):  
        new_str = str[i] + str2[j] 
        arr.append(new_str);

for i in range(0,n):  
    #This loop will add a character to start character one by one till the end is reached  
    for j in range(0,n):
    	for k in range(0,n):
    		new_str = str[i] + str2[j] + str3[k]
    		arr.append(new_str)         
   
#Prints all the subset  
  		


myHash(arr)
with open("data.json", "w") as write_file:
	json.dump(myDict,write_file,indent =4)

