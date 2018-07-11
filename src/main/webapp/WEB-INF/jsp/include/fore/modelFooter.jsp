<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
    
    <!-- BEGIN FOOTER -->
    <!-- END FOOTER -->
    <!-- <script type="text/javascript" src="/media/js/yy_card.js"></script> -->
    <script src="public/media/js/colpick.js"></script>
    <script src="public/media/js/plugin.js"></script>
    <script src="public/media/js/website.js"></script>
    <script src="public/media/js/jquery.upload.js"></script>
    <!--     <script src="/media/js/jquery.rotate.min.js"></script> -->
    <script src="public/swiper/dist/js/swiper.min.js"></script>
    <script>
    jQuery(document).ready(function() {
        App.init();
        UIModals.init();
        // var swiper = new Swiper('.swiper-container');
        $('.datainfo .span12,.loading').hide();
    });


    //上传图片
    function upload(obj, num, b) {
        $.upload({
            // 上传地址
            url: "{:url('user/website/ajax_upload')}",
            // 文件域名字
            fileName: 'file' + num,
            // 其他表单数据
            // 上传完成后, 返回json, text
            dataType: 'json',
            // 上传之前回调,return true表示可继续上传
            onSend: function() {
                return true;
            },
            // 上传之后回调
            onComplate: function(data) {
                if (b == 1) {
                    if (data.errcode == 1) {
                        // alert("上传成功");
                        $(obj).attr('src', data.errmsg);
                    } else {
                        alert("网络错误");
                    }
                } else {
                    $('#wraps').css({
                        'background': 'url(' + data.errmsg + ')  no-repeat',
                        'background-size': '100%',
                    });
                    // $("#containment-wrapper").attr('background','url('+data.errmsg+')');
                }
            }
        });
    }
    //保存

    function savewebsite() {

        var content = $(".dome_exp").html(); //后台元素    
        $("#website .maininfo img").attr('ondblclick', '');
        $('.ui-widget-header,.ui-resizable-handle').remove();
        $('.datahref :text').attr("disabled", "disabled");

        var web = $("#website").html(); //前台展示
        $.ajax({
            url: "{:url('user/website/savewebsite')}",
            type: 'POST',
            data: {
                "web": web,
                'con': content
            },
            dataType: "json",
            success: function(data) {
                if (data == 1) {
                    alert("提示", "保存成功！")
                } else {
                    alert("提示", "保存失败！")
                }
                setTimeout(function() {
                    location = location;
                }, 8000);
            }
        });
    }

    function keepdomafter() {
        play();

        $('.loading').hide();
        $('.ui-resizable-se').nextAll().remove();
        var swiper = new Swiper('.swiper-container', {
            // pagination: '.swiper-pagination',
            // paginationClickable: true,
            // nextButton: '.swiper-button-next',
            // prevButton: '.swiper-button-prev',
            // spaceBetween: 30,
            // effect: 'fade',
            // grabCursor: true,
            // autoplay: 2000,
        });

    }
    </script>
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>