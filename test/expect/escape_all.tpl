<html>
<head>
    <script>
        var x = "{#$spNum|f_escape_js#}";
    </script>
</head>
<body>
    <div class="{#$spUserInfo.userName|f_escape_xml#}">
        {#$spUserInfo.city|f_escape_xml#}
    </div>
    <div onclick="testTitle('{#$title|f_escape_event#}')"></div>
    <a href="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|f_escape_path#}/3"></a>
    <img src="http://hi.baidu.com/sys/checkuser/{#$spUserInfo.name|f_escape_path#}/3" alt="xssrepire"/>
    <span>服务:&nbsp; {#$widget_data.detail_info.service_rating|f_escape_xml#}</span>&nbsp;
    <span>服务:&nbsp; {#$widget_data.detail_info.service_rating|f_escape_xml#}</span>&nbsp;
    <div class='content-album-info'>
        {#$test|f_escape_xml#}
        {#$test/10#}
        {#$test=0#}
        <a class='content-album-name yahei'
        href='{#if $item.album_picture_total > 0#}/picture/album/list/{#$item.album_sign|f_escape_path#}{#else#}/picture/page/upload?album_sign={#$item.album_sign|f_escape_path#}{#/if#}'>{#$item.album_name|f_escape_xml#}</a>
        <span class='content-album-date'>
            {#$item.create_time|date_format:"%Y-%m-%d"#}
        </span>
    </div>
</body>
</html>