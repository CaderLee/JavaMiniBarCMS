<%-- 
    Document   : get_pwd
    Created on : 2016-8-2, 20:14:47
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="GB2312"%>
<%@ page import="java.sql.*"%>
<%@ include file="systems.jsp" %>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GB2312">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="<%=Description%>">
        <meta name="Keywords" content="<%=Keywords%>">
        <title>�һ�����/��������_<%=Sitename%></title>
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
            <div class="get_pwd left">
                <h2><i class="fa fa-key"></i>�һ�����</h2>
                <form name="form_getpwd" action="<%=basePath%>GetPwd.Tao" method="post" target="_self">
                    ���ڱ�վע����û�����
                    <input name="UserName" type="text" id="UserName">
                    <input name="submit_getpwd" type="submit" value="ȡ������">
                </form>
                <div class="error"></div>
                <div class="some_info" style="line-height: 3;color: #666">
                    <i>*�һ����룬����ȷ�����ڱ�վע����û����������޷��һ����룡</i><br>
                    <i>*���뷢��ʧ�ܣ���Ҫԭ���Ƿ���������ά���У���˲�Ҫ̫�����ģ����ǻᾡ�촦����վ��������������Զ���޹����������Ա��ϵ��</i><br>
                    <i>*���뷢�ͳɹ����뼰ʱ�鿴���ڱ�վע��ʱʹ�õ�ע�������ڵ��ʼ������һ��������뼰ʱɾ���ʼ����Է�����й¶��</i>
                </div>
            </div>
            <jsp:include page="inc/new_article.jsp" flush="true"></jsp:include>
        </div>
        <%@ include file="inc/footer.jsp"%>
        <script>
            $(function(){
                $('input[name=submit_getpwd]').click(function(){
                    if($('input[name=UserName]').val()==='' || $('input[name=UserName]').val().length<=0){
                        return false;
                    }
                });
                //�û���¼ajax��ѯ�û����Ƿ���ڻ���Ϊ��
                $('input[name=UserName]').blur(function(){
                        $.ajax({
                                type:'GET',
                                url:'<%=basePath%>LoginUser.Tao',
                                dataType:'html',
                                data:'username='+encodeURI(encodeURI($(this).val())),
                                beforeSend:function(XMLHttpRequest)
                                {
                                        $('.error').text('���ڲ�ѯ');
                                        //Pause(this,100000);
                                },
                                success:function (response,status,xhr) {
                                        $('.error').html(response);
                                }
                        });
                //alert($(this).val());
                });
            });
            
        
        </script>
    </body>
</html>
