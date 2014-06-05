<html>
<head>
    <title></title>
    <script>
        var x = "{$spNum|fis_js_escape}";
        var $data = function(){console.log('hi')};

        function trigger(){
            $data();
        }

        var data = {$data|fis_js_escape};

        var data2 = {$data|fis_js_escape };

        var data3 = { $data };

        var data4 = { $data};
    </script>
</head>

</html>