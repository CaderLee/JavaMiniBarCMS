<%-- 
    Document   : pay
    Created on : 2016-7-11, 21:34:23
    Author     : Mr.Tao
--%>

<%@page contentType="text/html" pageEncoding="GB2312"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ include file="systems.jsp" %>
<jsp:useBean scope="page" id="Goods" class="com.bar.db.Goods" />
<jsp:useBean scope="page" id="Goodinfo" class="com.bar.db.Goodinfo" />
<jsp:useBean scope="page" id="pages" class="com.bar.page.SplitPage" />
<jsp:useBean scope="page" id="User" class="com.bar.db.User" />
<%
    //��õ�ǰҳ��·��Ŀ¼
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
    String uname = (String) session.getAttribute("uname");
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
        out.println("<title>���½�󣬲ſ��Բ鿴�ײ��Լ�ʹ��Ԥ��/�����_MiniBarCMS</title>");  
        out.println("</head>");
        out.println("<body>");
        out.println("<div id=\"tips_error\">");
        out.println("<i class=\"fa fa-bug fa-3x\"></i><br>");
        out.println("���½�󣬲ſ��Բ鿴�ײ��Լ�ʹ��Ԥ��/�����");
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
        String sUserName = (String) session.getAttribute("uname");
	long lUserID = (Long) session.getAttribute("userid");	
	User.setUserid(lUserID);	
    User.init();
	float fMoney = User.getMoney();
	
	
	
	ResultSet rs = Goodinfo.show_goodinfo();
	pages.initialize(rs,5);
	String strPage=null;
	int showPage = 1;
	//��ȡ��ת����Ŀ��ҳ��
	strPage=request.getParameter("showPage");
	
	if (strPage==null)
	{
		showPage=1;
	}
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
		{
			showPage=1;
		}
		if(showPage>pages.getPageCount()) 
		{
			showPage=pages.getPageCount();
		}
	}
	//��ȡҪ��ʾ�����ݼ���
	Vector vData=pages.getPage(showPage);
    
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GB2312">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="<%=Description%>">
        <meta name="Keywords" content="<%=Keywords%>">
        <title>Ԥ��/����_<%=Sitename%></title>
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
                <h2><i class="fa fa-paypal"></i>�ײ�Ԥ��/����</h2>
                <div class="pay">
        <%
	for(int i=0;i<vData.size();i++)
	{ 
		//��ʾ����
		String[] sData=(String[])vData.get(i);
		long lGoodinfoid = Long.parseLong(sData[0]);
		Goodinfo.setGoodinfoid(lGoodinfoid);
		Goodinfo.init();
		float sPrice = Goodinfo.getPrice();
		
        %>
                    <div class="pay_info left">
                        <div class="photo left"><img src="<%=basePath%>pic/<%=Goodinfo.getPicurl()%>"><div class="price">��<%=sData[6]%></div><div class="brand"><%=sData[2]%></div></div>
                        <div  class="payment left">
                            <div class="pay_go">
                            <%
                                if(lUserID!= 0 & fMoney >= sPrice){

                            out.print("<a class=\"Pay_for\" href=\""+basePath+"payfor.jsp?Goodinfoid="+ sData[0] +"&userid="+lUserID+"\">��Ҫ����</a>");

                                }
                                else{
                            out.print("����");
                                }
                            %>
                            </div>
                        <ul>
                            <li style="width: 70%" class="left"><strong><%=sData[1]%></strong></li>
                            <li style="width: 70%"  class="left">ơ��������<%=sData[5]%>��</li>
                            <li><%=sData[4]%></li>
                            </ul>
                            
                        </div>
                    </div>
              <% } %>
              <div class="clear"></div>
              <div class="page">
                <div class="page_info">��<%=showPage%>ҳ/��<%=pages.getPageCount()%>ҳ</div>
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
			if(showPage < pages.getPageCount())
			{				
                    %>
                    <a href="<%=basePath%>news.jsp?showPage=<%=showPage+1%>">��һҳ</a>
                    <%
			}
			else
                            out.println("<a href=\"#\">��һҳ</a>");
                    %> 
                    <a href="<%=basePath%>news.jsp?showPage=<%=pages.getPageCount()%>">βҳ</a>
                    <div class="page_info">
                        <form action="<%=basePath%>news.jsp" method="post" class="page_form" target="_self">
                            <label>
                                <select name="showPage">��ת��
                <%
                    for(int x=1;x<=pages.getPageCount();x++){
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
        </div>
            <jsp:include page="inc/figure.jsp" flush="true"></jsp:include>
            <jsp:include page="inc/new_article.jsp" flush="true"></jsp:include>
        </div>
        <!--����������ʾ$load����--> 
        <div class="payfor">
            <div class="top_title">ȷ�Ϲ�����Ϣ<div class="close_pay"><a href="#"><i class="fa fa-close"></i></a></div></div>
            <div class="payfor_x"></div>
        </div>
        <%@ include file="inc/footer.jsp" %>
<script>
    $(document).ready(function(){
      $('.Pay_for').click(function(){
          var url= $(this).attr('href');
          //alert(url);
          $('.payfor').css({
                top:'50%',
                left:'50%',
                margin:'-'+($('.payfor').height()/2 +'px 0 0 -'+$('.payfor').width()/2)+'px',
                zIndex:999
            }).slideDown(300);
            $('#login_bg').css({
                display:'block',
                width:$(window).width(),
                height:$(document).height(),
                zIndex:998
            }).slideDown(300);
            $('.payfor_x').load(url).css('display','block').slideDown(3000);
            return false;

        });
        $('.payfor .top_title .close_pay a').click(function () {
            $('.payfor').hide(200);
            $('#login_bg').hide();
      });
});
</script>
    </body>
</html>
<% } %>
