Python 3.9.0 (tags/v3.9.0:9cf6752, Oct  5 2020, 15:34:40) [MSC v.1927 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.
>>> print("Hello World")
Hello World
>>> print("Hello World")
Hello World
>>> 15*16
240
>>> type(5)
<class 'int'>
>>> myname="Badie"
>>> myname
'Badie'
>>> myname[0]
'B'
>>> myname[-1]
'e'
>>> myname[1:3]
'ad'
>>> type(myname)
<class 'str'>
>>> myname[:2]
'Ba'
>>> for(char in myname):
	
SyntaxError: invalid syntax
>>> for(char in myname):
	
SyntaxError: invalid syntax
>>> 
>>> for(char in myname):
	
SyntaxError: invalid syntax
>>> for(char in myname)
SyntaxError: invalid syntax
>>> for char in myname:
	print(char)

	
B
a
d
i
e
>>> l=range(20)
>>> l
range(0, 20)
>>> for i in l:
	print(i)

	
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
>>> l=range(20,2)
>>> for i in l:
	print(i)

	
>>> l=range(0,20,2)
>>> for i in l:
	print(i)

	
0
2
4
6
8
10
12
14
16
18
>>> l=range(0,20,-2)
>>> for i in l:
	print(i)

	
>>> l=range(20,0,-2)
>>> for i in l:
	print(i)

	
20
18
16
14
12
10
8
6
4
2
>>> print(list(l))
[20, 18, 16, 14, 12, 10, 8, 6, 4, 2]
>>> mystring="We"
>>> type(mystring)
<class 'str'>
>>> l=[]
>>> l.append('A')
>>> l
['A']
>>> l.append('B')
>>> l
['A', 'B']
>>> l.append(5)
>>> l
['A', 'B', 5]
>>> l.append(['G'])
>>> l
['A', 'B', 5, ['G']]
>>> type(l[0])
<class 'str'>
>>> l.size
Traceback (most recent call last):
  File "<pyshell#50>", line 1, in <module>
    l.size
AttributeError: 'list' object has no attribute 'size'
>>> 
>>> l.length
Traceback (most recent call last):
  File "<pyshell#52>", line 1, in <module>
    l.length
AttributeError: 'list' object has no attribute 'length'
>>> length(l)
Traceback (most recent call last):
  File "<pyshell#53>", line 1, in <module>
    length(l)
NameError: name 'length' is not defined
>>> len(l)
4
>>> l._len_()
Traceback (most recent call last):
  File "<pyshell#55>", line 1, in <module>
    l._len_()
AttributeError: 'list' object has no attribute '_len_'
>>> l.__len__()
4
>>> l.amoun
Traceback (most recent call last):
  File "<pyshell#57>", line 1, in <module>
    l.amoun
AttributeError: 'list' object has no attribute 'amoun'
>>> l.amount
Traceback (most recent call last):
  File "<pyshell#58>", line 1, in <module>
    l.amount
AttributeError: 'list' object has no attribute 'amount'
>>> 
>>> l.pop()
['G']
>>> l
['A', 'B', 5]
>>> mystirng
Traceback (most recent call last):
  File "<pyshell#62>", line 1, in <module>
    mystirng
NameError: name 'mystirng' is not defined
>>> m="ihd infkznf     , knklnqslknq    qojd  dqojq  "
>>> m.strip
<built-in method strip of str object at 0x0000018D96A61390>
>>> m
'ihd infkznf     , knklnqslknq    qojd  dqojq  '
>>> m.strip()
'ihd infkznf     , knklnqslknq    qojd  dqojq'
>>> m="    kjkqskd   ,qsldknklqsn  qsdljkqsd phnhN3
SyntaxError: EOL while scanning string literal
>>> m="    kjkqskd   ,qsldknklqsn  qsdljkqsd phnhN33
SyntaxError: EOL while scanning string literal
>>> m="    kjkqskd   ,qsldknklqsn  qsdljkqsd phnhN33"
>>> m.strip()
'kjkqskd   ,qsldknklqsn  qsdljkqsd phnhN33'
>>> mstr="We"
>>> word2=" are the world"
>>> ' '.join(x)
Traceback (most recent call last):
  File "<pyshell#74>", line 1, in <module>
    ' '.join(x)
NameError: name 'x' is not defined
>>> sq
Traceback (most recent call last):
  File "<pyshell#75>", line 1, in <module>
    sq
NameError: name 'sq' is not defined

>>> q
Traceback (most recent call last):
  File "<pyshell#76>", line 1, in <module>
    q
NameError: name 'q' is not defined

>>> 
>>> 
>>> 
>>> 
>>> 
>>> 
>>> 