---
layout: post
title:  "让NodeJS应用以守护进程运行"
date:   2015-08-07 14:38:34 +0800
categories: nodejs
---

前些天发现可以用supervisor让NodeJS应用后台运行，于是记录到 
[[部署NodeJS Web应用](http://www.luokuncool.com/bu-shu-nodejsying-yong/)] 这篇博文里面了。   
今天发现用 [[forever](https://github.com/foreverjs/forever)] 也能实现，方法如下：  
    
    #安装forever
    npm install forever -g
    #启动应用
    forever start http.js
    #启动以后可以这样查看，运行中的应用，如图1
    forever list
    #停止应用
    forever stop http.js

<h3 style="text-align:center;margin:0;">图 1</h3>
![一张图片]({{ site.baseurl }}/images/20161119/QQ--20150807143910.png)

更多命令请查看https://github.com/foreverjs/forever

