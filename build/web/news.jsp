<%-- 
    Document   : news
    Created on : 2016-7-6, 21:49:07
    Author     : Mr.Tao
--%>

<%@page contentType="text/html" pageEncoding="GB2312"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<jsp:useBean scope="page" id="Page" class="com.bar.page.SplitPage" />
<jsp:useBean scope="page" id="Article" class="com.bar.db.Article" />
<jsp:useBean scope="page" id="User" class="com.bar.db.User" />
<%@ include file="systems.jsp" %>
<%
    //��õ�ǰҳ��·��Ŀ¼
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
    String uname = (String) session.getAttribute("uname");

    ResultSet rs = Article.show_all_articles();
			Page.initialize(rs,20);
			String strPage=null;
			int showPage = 1;
			strPage=request.getParameter("showPage");	
			if (strPage==null)
				showPage=1;
			else
			{
				try
				{
					showPage=Integer.parseInt(strPage);
				}
				catch(NumberFormatException e)
				{
					showPage = 1;
				}
				if(showPage<1) 
					showPage=1;
		
				if(showPage>Page.getPageCount()) 
					showPage=Page.getPageCount();
			}
			//��ȡҪ��ʾ�����ݼ���
			Vector vData=Page.getPage(showPage);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GB2312">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="<%=Description%>">
        <meta name="Keywords" content="<%=Keywords%>">
        <title>�ư���Ѷ_<%=Sitename%></title>
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
        <div class="focus">
            <div class="news_pic"></div>
        </div>
        <div class="container">
            <div class="list left">
                <h2><i class="fa fa-list-ol"></i>��Ѷ�����б�</h2>
                <ul>
    <%
        for(int i=0;i<vData.size();i++){ 
            //ѭ����ʾ������Ϣ
            String[] sData=(String[])vData.get(i);
            long lUserID = Long.parseLong(sData[2]);
            User.setUserid(lUserID);
            if(User.init())
            {
    %>
                <li>
                    <div class="title"><a href="<%=basePath%>show_news.jsp?articleid=<%=sData[0]%>" target="_self"><%="&nbsp;"+sData[1]%></a></div>
                    <div class="writer"><i class="fa fa-user"></i><%=User.getUname()%></div>
                    <div class="date"><i class="fa fa-calendar"></i><%=sData[5]%></div> 	
                    <div class="view"><i class="fa fa-eye"></i><%=sData[3]%></div>
                </li> 		
	<%
            }
	}
	%>
                   
                </ul>
                <div class="page">
                <div class="page_info">��<%=showPage%>ҳ/��<%=Page.getPageCount()%>ҳ</div>
                    <a href="<%=basePath%>news.jsp?showPage=1">��ҳ</a>
                    <%
			//�ж�"��һҳ"�����Ƿ�Ҫ��ʾ
			if(showPage > 1){				
                    %>
                    <a href="<%=basePath%>news.jsp?showPage=<%=showPage-1%>">��һҳ</a>
                    <%
			}
			else
                            out.println("<a href=\"#\">��һҳ</a>");
			//�ж�"��һҳ"�����Ƿ�Ҫ��ʾ
			if(showPage < Page.getPageCount())
			{				
                    %>
                    <a href="<%=basePath%>news.jsp?showPage=<%=showPage+1%>">��һҳ</a>
                    <%
			}
			else
                            out.println("<a href=\"#\">��һҳ</a>");
                    %> 
                    <a href="<%=basePath%>news.jsp?showPage=<%=Page.getPageCount()%>">βҳ</a>
                    <div class="page_info">
                        <form action="<%=basePath%>news.jsp" method="post" class="page_form" target="_self">
                            <label>
                                <select name="showPage">��ת��
                <%
                    for(int x=1;x<=Page.getPageCount();x++){
		%>
                    <option value="<%=x%>" <%if(showPage==x) out.println("selected");%> ><%=x%></option>
		<%
                    }
		%>
                                </select>ҳ
                            </label>
                                    <input type="submit" name="go" value="�ύ">
                        </form>
                    </div>
                </div>
            </div>
         <%rs.close();%>
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
