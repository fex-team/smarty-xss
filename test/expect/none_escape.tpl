<html>
<head>
    <script>
        var x = "{#$spNum|f_escape_js#}";
        var x = "{#$spNum|escape:none#}";
    </script>
</head>
<body>

    <div class="{#$spUserInfo.userName|f_escape_xml#}">
        {#$spUserInfo.city|f_escape_xml#}
    </div>
    <div class="{#$spUserInfo.userName|escape:none#}">
        {#$spUserInfo.city|escape:none#}
    </div>
    
    <div onclick="testTitle('{#$title|f_escape_event#}')"></div>
    <a href="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|f_escape_path#}/3"></a>
    <img src="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|f_escape_path#}/3" alt="xssrepire"/>
    <div onclick="testTitle('{#$title|escape:none#}')"></div>
    <a href="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|escape:none#}/3"></a>
    <img src="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|escape:none#}/3" alt="xssrepire"/>
    <a href="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|escape:"none"#}/3"></a>
    <img src="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|escape:"none"#}/3" alt="xssrepire"/>
</body>
</html>