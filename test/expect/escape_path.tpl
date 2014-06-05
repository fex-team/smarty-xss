<a href="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|f_escape_path#}/3"></a>
<img src="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|f_escape_path#}/3" alt="xssrepire"/>
<!--测试两个相同变量会去除后一个-->
<a  href="/app/{#$item.appname|f_escape_path#}?bk_fr={#$item.appname|f_escape_path#}_baike_minitab" target="_blank">
<!--测试完整路径转义-->
<img src="{#$spUserInfo.name|f_escape_xml#}"/>
<a href="{#$spUserInfo.name|f_escape_xml#}"></a>
<!--测试url中局部变量路径-->
<img src="/view/?from=xx{#$query|f_escape_path#}"/>
<img src="/view/c{#$id|f_escape_path#}.htm"> 
<!--测试逻辑中完整路径转义,目前会被当成整个字符串解决，可以讲逻辑与变量使用相分离,应该是f_escape_xml--->
<img src="{#if condition#}{#$url1|f_escape_path#}{#else#}{#$url2|f_escape_path#}"/>
<a href="{#if condition#}{#$url1|f_escape_path#}{#else#}{#$url2|f_escape_path#}"></a> 
<!--测试逻辑中局部变量路径转义-->
<img src="/view/c{#if condition#}{#$url1|f_escape_path#}{#else#}{#$url2|f_escape_path#}.htm"/>
<a href="/view/c{#if condition#}{#$url1|f_escape_path#}{#else#}{#$url2|f_escape_path#}.htm"></a> 