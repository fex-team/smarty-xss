{#extends file="page/common/layout/common.tpl"#}

{#block name="title"#}百度经验_作者稿酬计划{#/block#}

{#* 分类路径 *#}
{#block name="bread"#}
    {#widget name="common:bread" bread_content="作者稿酬计划"#}
{#/block#}

{#block name="content"#}
    {#widget name="index" idname="author" usehead=false#}
{#/block#}

{#* 右侧区 *#}
{#block name="aside"#}
    {#widget name="aside"#}
{#/block#}

{#block name="pageLoaded"#}
<script type="text/javascript" compress>
    if(typeof PDC != 'undefined'){
        PDC.init({
            is_login   : {#if $UserInfo.isLogin#}{#$UserInfo.isLogin|f_escape_js#}{#else#}0{#/if#},
            sample     : 1,
            product_id : 132,
            page_id    : 5
        });
    }
    
    F.context({
        "newExp" : "{#$newExp|f_escape_js#}",   //最新付费经验展示区块，后端提供最新50条经验
        "uoper" : "{##UOPER##}",
        "asyn" : "{##ASYN##}"
    });

    F.use(['tangram:base','common:login','author-apply','new-exp-list'], function(T,login,apply,newList) {
        T.dom.ready( function() {
            //最新付费经验动态推送效果
            newList.init();
            //初始化,绑定申请按钮事件
            apply.init();
        });
    });
</script>
{#/block#}