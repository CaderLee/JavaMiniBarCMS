<%-- 
    Document   : show_news
    Created on : 2016-7-7, 10:15:56
    Author     : Mr.tao
--%>

<%@page contentType="text/html" pageEncoding="GB2312"%>
<jsp:useBean scope="page" id="User" class="com.bar.db.User" />
<jsp:useBean scope="page" id="Article" class="com.bar.db.Article" />
<jsp:useBean scope="page" id="Type" class="com.bar.db.Type" />
<%@ include file="systems.jsp" %>
<%
    String uname = (String) session.getAttribute("uname");
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
    
    //���Ҫ��ʾ�����µĲ�����������תΪ����ֵ
    String sArticleid = request.getParameter("articleid");
    long lArticleid = Long.parseLong(sArticleid);

    //�������������Ϣ
    Article.setArticleid(lArticleid);
    Article.init();

    //���������Ϣ
    User.setUserid(Article.getUserid());
    User.init();

    //��õ�ǰ��������Ϣ
    Type.setTypeid(Article.getTypeid());
    Type.init();	

    int count=1;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GB2312">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="<%=Description%>">
        <meta name="Keywords" content="<%=Keywords%>">
        <title><%=Article.getTitle()%>_<%=Sitename%></title>
        <link rel="stylesheet" href="<%=basePath%>css/style.css">
        <link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="js/html5.js"></script>
          <script src="js/respond.js"></script>
        <![endif]-->
    </head>
    <body>
        <%@ include file="inc/header.jsp" %>
        <div class="container">
            <div class="article left">
                <h1><%=Article.getTitle()%></h1>
                <div class="info">
                    <span><i class="fa fa-user"></i><%=User.getUname()+"��"+User.getName()+"��"%></span>
                    <span><i class="fa fa-calendar"></i><%=Article.getCreatetime()%></span>
                    <span><i class="fa fa-eye"></i><%=Article.getReadcount()%></span>
                    <span><i class="fa fa-font"></i>���壺<a id="font-mx" href="#">��</a> <a id="font-lx" href="#">��</a> <a id="font-sx" href="#">С</a></span>
                    <span><i class="fa fa-share-square"></i>����<a href=""><i class="fa fa-qq"></i></a> <a href=""><i class="fa fa-google-plus-square"></i></a></span>
                </div>
                <div class="content">
                    <%
                        String sContent = Article.getContent();
                        sContent = sContent.replaceAll("\r\n","<br>");
                        out.println(sContent);
                    %>
                </div>
            </div>
                <%
                    //���Ķ�����1
                    int iReadCount = Article.getReadcount()+1;
                    Article.setReadcount(iReadCount);
                    Article.modify_readcount();
                %>
            <figure class="right">
                <img src="<%=basePath%>images/112.jpg">
                <div class="title"><i class="fa fa-retweet" aria-hidden="true"></i>
                    ����5����</div>
                <span>��ͼ��ʾ���ǵ�һ�δ򿪵ļ����������ӡ�Ĭ�ϵ�һ�δ򿪵Ĺ����Ǳ�׼��������������������򵥵ļӼ��˳��ļ��㡣���⣬���ŵ�ʹ��Ҫ�����������ٵ�����ţ�1/x��������ʹ��ҲҪ�����������ٵ��1/x�������ܡ�</span>
            </figure>
            <jsp:include page="inc/new_article.jsp" flush="true"></jsp:include>
        </div>
        <%@ include file="inc/footer.jsp" %>
    </body>
</html>
