#!/usr/bin/python3
import hashlib

brute = open('list.txt')
check = brute.read().split("\n")
Machine = "0"

while Machine == "0":
    if  ( 1 + 1  ==  2 ):
            #Enter the hash you want to Brute Force Crack here
            print ("Enter the the hash you want to brute Force Crack: ")
            password = input ("$SHA$")
            i = 0
            while i < len(check):
                x = hashlib.sha256(check[i]).hexdigst()
                print("[i] Encrypted " + check[i] + " = " + x)
                if x == password:
                    print("[i] Brute Force Crack Successful! The Password is: " + check[i])
                    i = len(check) + 1

                else:
                    print("[x] Password not cracked this time!")
                    i = i + 1
