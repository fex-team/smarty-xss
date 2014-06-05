<html>
<head>
    <script>
        var x = "{#$spNum#}";
        var x = "{#$spNum|escape:none#}";
    </script>
</head>
<body>

    <div class="{#$spUserInfo.userName#}">
        {#$spUserInfo.city#}
    </div>
    <div class="{#$spUserInfo.userName|escape:none#}">
        {#$spUserInfo.city|escape:none#}
    </div>
    
    <div onclick="testTitle('{#$title#}')"></div>
    <a href="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name#}/3"></a>
    <img src="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name#}/3" alt="xssrepire"/>
    <div onclick="testTitle('{#$title|escape:none#}')"></div>
    <a href="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|escape:none#}/3"></a>
    <img src="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|escape:none#}/3" alt="xssrepire"/>
    <a href="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|escape:"none"#}/3"></a>
    <img src="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|escape:"none"#}/3" alt="xssrepire"/>
</body>
</html>