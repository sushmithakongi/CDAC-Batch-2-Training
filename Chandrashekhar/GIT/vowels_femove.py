# -*- coding: utf-8 -*-
"""Vowels_Femove

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1abW6-wbQZLWJWdWpWz3T6dgh7IMAeru0
"""

str1=input("Enter the string ").lower()
str2=""
for i in str1:
  if i in ["a","e","i","o","u"]:
    pass
  else:
    str2=str2+i
print(str2)
