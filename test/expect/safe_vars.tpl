<html>
<head>
    <script>
        var x = "{#$fis_safe#}";
        var x = "{#$spNum|f_escape_js#}";
    </script>
</head>
<body>

    <div class="{#$fis_safe#}">
        {#$fis_safe#}
    </div>
    <div class="{#$spUserInfo.userName|f_escape_xml#}">
        {#$spUserInfo.city|f_escape_xml#}
    </div>
    
    <div onclick="testTitle('{#$fis_safe#}')"></div>
    <a href="http://hi.baidu.com/sys/checkuser/{#$fis_safe#}/3"></a>
    <img src="http://hi.baidu.com/sys/checkuser/{#$fis_safe#}/3" alt="xssrepire"/>
    <div onclick="testTitle('{#$title|f_escape_event#}')"></div>
    <a href="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|f_escape_path#}/3"></a>
    <img src="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|f_escape_path#}/3" alt="xssrepire"/>

</body>
</html>