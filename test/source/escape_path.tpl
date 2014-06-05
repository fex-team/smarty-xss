<a href="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name#}/3"></a>
<img src="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name#}/3" alt="xssrepire"/>
<!--测试两个相同变量会去除后一个-->
<a  href="/app/{#$item.appname#}?bk_fr={#$item.appname#}_baike_minitab" target="_blank">
<!--测试完整路径转义-->
<img src="{#$spUserInfo.name#}"/>
<a href="{#$spUserInfo.name#}"></a>
<!--测试url中局部变量路径-->
<img src="/view/?from=xx{#$query#}"/>
<img src="/view/c{#$id#}.htm"> 
<!--测试逻辑中完整路径转义,目前会被当成整个字符串解决，可以讲逻辑与变量使用相分离,应该是f_escape_xml--->
<img src="{#if condition#}{#$url1#}{#else#}{#$url2#}"/>
<a href="{#if condition#}{#$url1#}{#else#}{#$url2#}"></a> 
<!--测试逻辑中局部变量路径转义-->
<img src="/view/c{#if condition#}{#$url1#}{#else#}{#$url2#}.htm"/>
<a href="/view/c{#if condition#}{#$url1#}{#else#}{#$url2#}.htm"></a> 