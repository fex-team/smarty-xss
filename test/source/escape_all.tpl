<html>
<head>
    <script>
        var x = "{#$spNum#}";
    </script>
</head>
<body>
    <div class="{#$spUserInfo.userName#}">
        {#$spUserInfo.city#}
    </div>
    <div onclick="testTitle('{#$title#}')"></div>
    <a href="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name#}/3"></a>
    <img src="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name#}/3" alt="xssrepire"/>
    <span>服务:&nbsp; {#$widget_data.detail_info.service_rating#}</span>&nbsp;
    <span>服务:&nbsp; {#$widget_data.detail_info.service_rating#}</span>&nbsp;
    <div class='content-album-info'>
        {#$test#}
        {#$test/10#}
        {#$test=0#}
        <a class='content-album-name yahei'
        href='{#if $item.album_picture_total > 0#}/picture/album/list/{#$item.album_sign#}{#else#}/picture/page/upload?album_sign={#$item.album_sign#}{#/if#}'>{#$item.album_name#}</a>
        <span class='content-album-date'>
            {#$item.create_time|date_format:"%Y-%m-%d"#}
        </span>
    </div>
</body>
</html>