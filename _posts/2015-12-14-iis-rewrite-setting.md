---
layout: post
title:  "IIS伪静态配置"
date:   2015-12-14 11:00:34 +0800
categories: iis
---

把所有非静态文件请求都交给index.php处理，规则如下：
{% highlight xml %}    
<?xml version="1.0" encoding="UTF-8"?>
<configuration>
    <system.webServer>
        <rewrite>
            <rules>
                <rule name="OrgPage" stopProcessing="true">
                    <match url="^(.*)$"/>
                    <conditions logicalGrouping="MatchAll">
                        <add input="{HTTP_HOST}" pattern="^(.*)$"/>
                        <add input="{REQUEST_FILENAME}" matchType="IsFile" negate="true"/>
                        <add input="{REQUEST_FILENAME}" matchType="IsDirectory" negate="true"/>
                    </conditions>
                    <action type="Rewrite" url="index.php/{R:1}"/>
                </rule>
            </rules
        </rewrite>
    </system.webServer>
</configuration>
{% endhighlight %}
对应Apache的规则：  

    <IfModule mod_rewrite.c>
        RewriteEngine On
        RewriteCond %{REQUEST_FILENAME} !-d
        RewriteCond %{REQUEST_FILENAME} !-f
        RewriteRule ^(.*)$ index.php [QSA,L]
    </IfModule>
