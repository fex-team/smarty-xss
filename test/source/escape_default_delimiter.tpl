<html>
<head>
    <title></title>
    <script>
        var x = "{$spNum}";
        var $data = function(){console.log('hi')};

        function trigger(){
            $data();
        }

        var data = {$data};

        var data2 = {$data };

        var data3 = { $data };

        var data4 = { $data};
    </script>
</head>

</html>