### aria2-starter

---

* [aria2](https://github.com/aria2/aria2)
* [AriaNg](https://github.com/mayswind/AriaNg)



#### 介绍

Aria2

> aria2 is a **lightweight** multi-protocol & multi-source command-line **download utility**. It supports **HTTP/HTTPS**, **FTP**, **SFTP**, **BitTorrent** and **Metalink**. aria2 can be manipulated via built-in **JSON-RPC** and **XML-RPC** interfaces.

AriaNg

> AriaNg is a modern web frontend making [aria2](https://github.com/aria2/aria2) easier to use. AriaNg is written in pure html & javascript, thus it does not need any compilers or runtime environment. You can just put AriaNg in your web server and open it in your browser. AriaNg uses responsive layout, and supports any desktop or mobile devices.

一个简单易用的aria2+AriaNg的Docker启动镜像，大小只有**24MB**。

#### Get Started

`docker run -d --name aria2-starter --restart=always -p [rpcPort]:6800 -p [webPort]:80 -v [/your/download/url]:/data [optional -v /your/aria2.conf:/app/conf/aria2.conf] simonreeal/aria2-starter`

打开浏览器访问：http://\<hostname\>:\<webPort\>