<%-- 
    Document   : ע��
    Created on : 2016-7-7, 17:57:12
    Author     : Mr.tao
--%>

<%@page contentType="text/html" pageEncoding="GB2312"%>
<%@ include file="systems.jsp" %>
<% 
   request.setCharacterEncoding("gb2312");
   response.setCharacterEncoding("gb2312");
   //��õ�ǰҳ��·��Ŀ¼
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GB2312">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="<%=Description%>">
        <meta name="Keywords" content="<%=Keywords%>">
        <title><%=Sitename%></title>
        <link rel="stylesheet" href="<%=basePath%>css/style.css">
        <link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="js/html5.js"></script>
          <script src="js/respond.js"></script>
        <![endif]-->
    </head>
    <body>
        <%@ include file="inc/reg_header.jsp" %>
        <div class="focus">
            <div class="news_pic"></div>
        </div>
        <div class="container">
            <div class="list left">
                <h2><i class="fa fa-user-plus"></i>�û�ע�� <small>(��������д����ע����Ϣ���Ա����Ǹ��õ�Ϊ������)</small></h2>
                <jsp:include page="inc/reg_form.jsp" flush="true"></jsp:include>
                </div>
            <figure class="right">
                <img src="<%=basePath%>images/112.jpg">
                <div class="title"><i class="fa fa-retweet" aria-hidden="true"></i>
                    ����5����</div>
                <span>��ͼ��ʾ���ǵ�һ�δ򿪵ļ����������ӡ�Ĭ�ϵ�һ�δ򿪵Ĺ����Ǳ�׼��������������������򵥵ļӼ��˳��ļ��㡣���⣬���ŵ�ʹ��Ҫ�����������ٵ�����ţ�1/x��������ʹ��ҲҪ�����������ٵ��1/x�������ܡ�</span>
            </figure>
            <jsp:include page="inc/new_article.jsp" flush="true"></jsp:include>
        </div>
        <%@ include file="inc/footer.jsp" %>
    <script src="<%=basePath%>js/jquery.validate.min.js"></script>
    <script src="<%=basePath%>js/messages_zh.min.js" charset="utf-8"></script>
    <script src="<%=basePath%>js/browser.js" charset="utf-8"></script>
    <script src="<%=basePath%>js/jquery.date_input.pack.js" charset="utf-8"></script>
    <script>
        $(function(){
            //ע��ҳ���������ʹ��
            $('.birth_day').date_input();
             //ע�����֤
            $("#Join").validate({
                rules: {
                    pwd1: {
                        required: true,
                        minlength: 6
                    },
                    pwd2: {
                        required: true,
                        minlength: 6,
                        equalTo: "#pwd1"
                    },
                }
            });
            //ע���ajax��ѯ�û����Ƿ����
            $('input[name=uname]').blur(function(){
                $.ajax({
                    type:'GET',
                    url:'<%=basePath%>NameChek.Tao',
                    dataType:'html',
                    data:'uname='+encodeURI(encodeURI($(this).val())),
                    beforeSend:function(XMLHttpRequest)
                    {
                        $('#AjaxUname').text('���ڲ�ѯ');
                        //Pause(this,100000);
                    },
                    success:function (response,status,xhr) {
                        $('#AjaxUname').html(response);
                    }
                });
            //alert($(this).val());
            });
            //���ע�������֤���Ƿ���ȷ
            $('input[name=Rand]').blur(function(){
                $.ajax({
                    type:'GET',
                    url:'<%=basePath%>CodeAjax.Tao',
                    dataType:'html',
                    data:'Rand='+$(this).val(),
                    beforeSend:function(XMLHttpRequest)
                    {
                        $('#AjaxCode').text('���ڲ�ѯ');
                        //Pause(this,100000);
                    },
                    success:function (response,status,xhr) {
                        $('#AjaxCode').html(response);
                    }
                });
                //alert($(this).val());
            });
        });
        </script>
    </body>
</html>