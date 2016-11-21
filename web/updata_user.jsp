<%-- 
    Document   : updata_user
    Created on : 2016-7-30, 21:21:01
    Author     : Mr.Tao
--%>

<%@page contentType="text/html" pageEncoding="GB2312"%>
<%@ include file="systems.jsp" %>
<%
    String uname = (String) session.getAttribute("uname");
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
    if(uname==null || uname.length() <= 0){
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<link rel=\"stylesheet\" href=\""+basePath+"css/style.css\">");
        out.println("<link rel=\"stylesheet\" href=\""+basePath+"css/font-awesome.min.css\">");
        out.println("<!--[if lt IE 9]>");
        out.println("<script src=\""+basePath+"js/html5.js\"></script>");
        out.println("<script src=\""+basePath+"js/respond.js\"></script>");
        out.println("<![endif]-->");
        out.println("<title>��½��ʱ�������µ�½_"+Description+"</title>");  
        out.println("</head>");
        out.println("<body>");
        out.println("<div id=\"tips_error\">");
        out.println("<i class=\"fa fa-bug fa-3x\"></i><br>");
        out.println("��½��ʱ�������µ�½������");
        out.println("<div class=\"bottom_c\"><a href=\"javascript:window.history.go(-1)\">����</a><a href=\""+basePath+"\">��ҳ</a><a href=\""+basePath+"news.jsp\">��Ѷ</a></div>");
        out.println("</div>");
        out.println("<div id=\"tips_bg\"></div>");
        out.println("<script src=\""+basePath+"js/jQuery1.12.4.js\"></script>");
        out.println("<script>");
        out.println("$(function () {");
        out.println("$('#tips_error').css({");
        out.println("top:'50%',");
        out.println("left:'50%',");
        out.println("margin:'-'+($('#tips_error').height()/2+'px 0 0 -'+$('#tips_error').width()/2)+'px'");
        out.println("});");
        out.println("$('#tips_bg').css({");
        out.println("width:$(window).width(),");
        out.println("height:$(document).height()");
        out.println("});");
        out.println("});");
        out.println("</script>");
        out.println("</body>");
        out.println("</html>");
    }else{
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="<%=Description%>">
        <meta name="Keywords" content="<%=Keywords%>">
        <title>�û���Ϣ�޸�_<%=Sitename%></title>
        <link rel="stylesheet" href="<%=basePath%>css/style.css">
        <link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css">
        <link rel="stylesheet" href="<%=basePath%>css/jquery-ui.min.css">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="js/html5.js"></script>
          <script src="js/respond.js"></script>
        <![endif]-->
    </head>
    <body>
        <%@ include file="inc/header.jsp" %>
        <div class="focus">
            <div class="news_pic"></div>
        </div>
        <div class="container">
            <div class="list left">
                <h2><i class="fa fa-user-plus"></i>�û���Ϣ�޸�</h2>
                <div class="user_me">
                <%@ include file="inc/update_user.jsp" %>
                </div>
            </div>
            <jsp:include page="inc/figure.jsp" flush="true"></jsp:include>
            <jsp:include page="inc/new_article.jsp" flush="true"></jsp:include>
        </div>
        <%@ include file="inc/footer.jsp" %>
        <script src="<%=basePath%>js/browser.js" charset="utf-8"></script>
    <script src="<%=basePath%>js/jquery.date_input.pack.js" charset="utf-8"></script>
    <script src="<%=basePath%>js/jquery.validate.min.js"></script>
    <script src="<%=basePath%>js/messages_zh.min.js" charset="utf-8"></script>
    <script>
        $(function(){
            //�����޸�
            $("#PWD").validate({
                rules: {
                    pwd: {
                        required: true,
                        minlength: 6
                    },
                    pwd1: {
                        required: true,
                        minlength: 6,
                        equalTo: "#pwd"
                    },
                }
            });
            $('input[name=submit_psw]').click(function () {
                var Oldpwd = $('input[name=OldUserPassword]').val();
                var pwd = $('input[name=pwd]').val();
                var pwd1 = $('input[name=pwd1]').val();
                if(Oldpwd=='' || pwd=='' || pwd.length < 6 || pwd1=='' || pwd1.length < 6){
                $('#pwd_error').html('<i class=\"fa fa-bug\"></i>������������������');
                return false;
                }
            });
            
            //����
            $('#birth').date_input();
            
            //JQ����input��ֵ�Ƿ����仯������仯�������ύ�������ֹ�ύ
            //Ĭ��submit��ֹ�ύ
            $('input[name=submit_u_info]').attr("disabled","disabled");
            //��꾭�����ԭ����inputֵ��������
            $('#Info_u input').hover(function() {
                var value_c=$(this).val().length;
                //alert(value_c);
                //�����¼������input�޸ĺ��ֵ
                $(this).keyup(function(){
                    var value_k = $(this).val().length;
                    //alert(value_k);
                    //����ԭ����ֵ���޸ĺ��ֵ����ȣ�˵��input�Ѿ����޸ģ����������ύ��������
                    if(value_c != value_k){
                        $('input[name=submit_u_info]').removeAttr("disabled"); 
                    }
                });
            });
        });
    </script>
    </body>
</html>
<%}%>