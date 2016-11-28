<%-- 
    Document   : index
    Created on : 2016-7-6, 19:04:20
    Author     : Mt.Tao
--%>
<%@page contentType="text/html" pageEncoding="GB2312"%>
<%@ page import="java.sql.*"%>
<jsp:useBean scope="page" id="User" class="com.bar.db.User" />
<jsp:useBean scope="page" id="Article" class="com.bar.db.Article" />
<%@ include file="systems.jsp" %>
<%
    //��õ�ǰҳ��·��Ŀ¼
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
    String uname = (String) session.getAttribute("uname");
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
        <link rel="stylesheet" href="<%=basePath%>css/glide.core.min.css">
        <link rel="stylesheet" href="<%=basePath%>css/glide.theme.min.css">
        <link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="js/html5.js"></script>
          <script src="js/respond.js"></script>
        <![endif]-->
    </head>
    <body>
        <%@ include file="inc/header.jsp" %>
        <div class="focus">
            <div class="module module--horizontal">
                <div id="Slideshow" class="glide">

                    <div class="glide__arrows">
                        <button class="glide__arrow prev" data-glide-dir="<">prev</button>
                        <button class="glide__arrow next" data-glide-dir=">">next</button>
                    </div>

                    <div class="glide__wrapper">
                        <ul class="glide__track">
                            <li class="glide__slide">
                                <div class="box"><img src="<%=basePath%>images/2.jpg" style="height: 420px" alt="peer"></div>
                            </li>
                            <li class="glide__slide">
                                <div class="box"><img src="<%=basePath%>images/1.jpg" style="height: 420px" alt="you and me"></div>
                            </li>
                            <li class="glide__slide">
                                <div class="box"><img src="<%=basePath%>images/3.jpg" style="height: 420px" alt="position"></div>
                            </li>
                        </ul>
                    </div>

                    <div class="glide__bullets"></div>

                </div>
            </div>
        </div>
        <div class="container">
            <jsp:include page="inc/top_news.jsp" flush="true"></jsp:include>
            <jsp:include page="inc/news.jsp" flush="true"></jsp:include>
         
            <figure class="left">
                <figcaption><i class="fa fa-file-photo-o"></i>����5���Σ��ҵĸ���</figcaption>
                <img src="<%=basePath%>images/112.jpg">
            </figure>
            <figure class="left">
                <figcaption><i class="fa fa-file-photo-o"></i>���ڷ��������ѾƵ���</figcaption>
                <img src="<%=basePath%>images/113.jpg">
            </figure>
            <div class="clear"></div>
            <div class="update">
                <h1>MiniBarCMS��������</h1>
                <span>С�;ư����߹���ϵͳ���<mark>MiniBarCMS</mark>,��2010����<mark>Mr.Tao</mark>������������һ���汾</span>
                <div class="course_nr">
                    <ul class="course_nr2">
                        <li>
                            <div class="project">
                                <h2>2010</h2>
                                <p>MiniBarCMS��һ�汾�����ɹ����������࣬�����Ӱ���˺�����ǰ���ع����⣬���ҹ��ܼ򵥵�minibarϵͳȷӵ��17.6M���������������Ӵ�</p>
                            </div>
                        </li>
                        <li>
                            <div class="project">
                                <h2>2011</h2>
                                <p><strong>1��</strong>���¸�д��һЩ��֪�Ĵ���<br><strong>2��</strong>��FCKediter2.3��������FCKeditor2.4.6��<strong><br>3��</strong>������ǰ��̨LogoͼƬ��</p>
                            </div>
                        </li>
                        <li>
                            <div class="project">
                                <h2>2016</h2>
                                <p><strong>1��</strong>����Json��ȡ�������ݣ���Ʒ���ݡ�
                                    <strong>2��</strong>FCKediter����Ϊueditor��
                                    <strong>3��</strong>ǰ���ع���
                                    <strong>4��</strong>����font-awesome����ͼ�ꡣ��10�����Ż��͸���</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    <%@ include file="inc/footer.jsp" %>
    </body>
</html>
