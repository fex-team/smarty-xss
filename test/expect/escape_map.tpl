<html>
<head>
    <script>
        var x = "{#$spNum|fis_js_escape#}";
    </script>
</head>
<body>
    <div class="{#$spUserInfo.userName|fis_html_escape#}">
        {#$spUserInfo.city|fis_html_escape#}
    </div>
    <div onclick="testTitle('{#$title|fis_event_escape#}')"></div>
    <a href="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|f_escape_path#}/3"></a>
    <img src="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|f_escape_path#}/3" alt="xssrepire"/>
    <div class='content-album-info'>
        <a class='content-album-name yahei'
        href='{#if $item.album_picture_total > 0#}/picture/album/list/{#$item.album_sign|f_escape_path#}{#else#}/picture/page/upload?album_sign={#$item.album_sign|f_escape_path#}{#/if#}'>{#$item.album_name|fis_html_escape#}</a>
        <span class='content-album-date'>
            {#$item.create_time|date_format:"%Y-%m-%d"#}
        </span>
    </div>
</body>
</html>