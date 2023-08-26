#!/usr/bin/python3

import os

def readFile(file):

    print("\nReading File")
    with open(file, 'r') as f: # Auto close 
        count = 0
        for i in f:
            count += 1
            print(count,": ",i)

    print('*' * 40)
    print("\n")


def writeFile(file):
    with open(file, 'w') as f:
        f.writelines(['Hello Sir\n', 'My name is\n', 'Snahal Kumar'])


def appendFile(file):
    with open(file, 'a') as f:
        f.write("\nAdding a new line HEHE\n")


def addingLine(file):
    try:
        lineNo = int(input("Enter the Line number: "))
        newText = input("Enter the text: ")
        lineNo -= 1

        with open(file,'r+') as f:
            fileList = f.readlines()

        fileList.insert(lineNo, newText + '\n')

        with open(file,'r+') as f:
            f.writelines(fileList)
    except IOError:
        print("Error!")


#def renameFile(file):
#    newName = input("Give a new Name: ")
#    os.rename(file, newName)

file = input("Enter Absolute File Name: ")
writeFile(file) # Always override the content from 1st line
readFile(file)

appendFile(file) # Append the File in new line
readFile(file)
addingLine(file)
readFile(file)

#renameFile(file)
os.remove(file)
