set the download source in china
--------------------------------

List of source:

AliYun [https://mirrors.aliyun.com/pypi/simple/](http://mirrors.aliyun.com/pypi/simple/)   
douban [https://pypi.douban.com/simple/](http://pypi.douban.com/simple/)   
 tsinghua [https://pypi.tuna.tsinghua.edu.cn/simple/](https://pypi.tuna.tsinghua.edu.cn/simple/)   

on command line:  
pip install scrapy -i [https://pypi.tuna.tsinghua.edu.cn/simple](https://pypi.tuna.tsinghua.edu.cn/simple)

linux:

 ~/.pip/pip.conf**(if doesn’t , create one file)**

add line:

\[global\]  
index-url = [https://pypi.tuna.tsinghua.edu.cn/simple](https://pypi.tuna.tsinghua.edu.cn/simple)

windows:

create the directory

C:\\Users\\xx\\pip(xx is user)

create file the pip.ini , and add line:

\[global\]  
index-url = [https://pypi.tuna.tsinghua.edu.cn/simple](https://pypi.tuna.tsinghua.edu.cn/simple)

Install python and robotframework
---------------------------------

### step1、go to python website to download

[https://www.python.org/downloads/](https://www.python.org/downloads/)

the version is 3.7 or 3.8

and install the python.

step2、set env Path in windows:

C:\\python38\\Scripts\\

C:\\python38\\

step3、 install robotframework

**pip install robotframework**

Install wxpython and IDE tool RIDE
----------------------------------

step1、install wxpython

`pip install -U wxPython`

step2、install IDE Tools Ride

`pip install robotframework-ride`

step3、open ride tools as below

go to the directory:

C:\\python38\\Scripts

double click the ride.py

or creat shutcut in desktop for ride.py

and then double click

Develop the web test case with robotframe work;
-----------------------------------------------

Develop the API test case with robotframework
---------------------------------------------

The tips of IDE ride;
---------------------