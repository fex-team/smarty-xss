<html>
<head>
    <script>
        var x = "{#$fis_safe#}";
        var x = "{#$spNum#}";
    </script>
</head>
<body>

    <div class="{#$fis_safe#}">
        {#$fis_safe#}
    </div>
    <div class="{#$spUserInfo.userName#}">
        {#$spUserInfo.city#}
    </div>
    
    <div onclick="testTitle('{#$fis_safe#}')"></div>
    <a href="http://hi.baidu.com/sys/checkuser/{#$fis_safe#}/3"></a>
    <img src="http://hi.baidu.com/sys/checkuser/{#$fis_safe#}/3" alt="xssrepire"/>
    <div onclick="testTitle('{#$title#}')"></div>
    <a href="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name#}/3"></a>
    <img src="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name#}/3" alt="xssrepire"/>

</body>
</html>