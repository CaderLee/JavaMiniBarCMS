<%-- 
    Document   : testdir��Ҫ��Ϊ�˲�����glassfish��Thread.currentThread().getContextClassLoader().getResource("").toString();����õ�classesĿ¼λ�ã��Ա���DB.properties�ļ�����ӦĿ¼����java���������Ե�Ŀ¼Ϊ��ǰwebĿ¼�µ�classes�ļ���������sevelet�в������Ϊ��glassfish��classesĿ¼
    Created on : 2016-8-24, 15:51:35
    Author     : Mr.Tao
--%>

<%@page contentType="text/html" pageEncoding="GB2312"%>
<jsp:useBean scope="page" id="DB" class="com.bar.db.ExecuteDB" />
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>JSP Page</title>
    </head>
    <body>
<%
 String path1 = Thread.currentThread().getContextClassLoader().getResource("").toString();
 path1=path1.replace('/', '\\'); // ��/����\  
 path1=path1.replace("file:", ""); //ȥ��file:  
 path1=path1.replace("classes\\", ""); //ȥ��class\  
 path1=path1.substring(1); //ȥ����һ��\,�� \D:\JavaWeb...  
 out.println("Thread:"+path1);
%>
    </body>
    
</html>
