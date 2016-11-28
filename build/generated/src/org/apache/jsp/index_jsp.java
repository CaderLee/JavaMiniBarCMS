package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/systems.jsp");
    _jspx_dependants.add("/inc/header.jsp");
    _jspx_dependants.add("/inc/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=GB2312");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      com.bar.db.User User = null;
      synchronized (_jspx_page_context) {
        User = (com.bar.db.User) _jspx_page_context.getAttribute("User", PageContext.PAGE_SCOPE);
        if (User == null){
          User = new com.bar.db.User();
          _jspx_page_context.setAttribute("User", User, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\n');
      com.bar.db.Article Article = null;
      synchronized (_jspx_page_context) {
        Article = (com.bar.db.Article) _jspx_page_context.getAttribute("Article", PageContext.PAGE_SCOPE);
        if (Article == null){
          Article = new com.bar.db.Article();
          _jspx_page_context.setAttribute("Article", Article, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\n');
      out.write('\r');
      out.write('\n');
      com.bar.db.Systems Systems = null;
      synchronized (_jspx_page_context) {
        Systems = (com.bar.db.Systems) _jspx_page_context.getAttribute("Systems", PageContext.PAGE_SCOPE);
        if (Systems == null){
          Systems = new com.bar.db.Systems();
          _jspx_page_context.setAttribute("Systems", Systems, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\r');
      out.write('\n');

 long sid=1;
 Systems.setSid(sid);
 Systems.init();
 String Sitename = Systems.getSitename();
 String Keywords = Systems.getKeywords();
 String Description = Systems.getDescription();
 String Author =Systems.getAuthor();
 String Email = Systems.getEmail();
 String Tel = Systems.getTel();

      out.write('\r');
      out.write('\n');
      out.write('\n');

    //��õ�ǰҳ��·��Ŀ¼
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
    String uname = (String) session.getAttribute("uname");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=GB2312\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"description\" content=\"");
      out.print(Description);
      out.write("\">\n");
      out.write("        <meta name=\"Keywords\" content=\"");
      out.print(Keywords);
      out.write("\">\n");
      out.write("        <title>");
      out.print(Sitename);
      out.write("</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print(basePath);
      out.write("css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print(basePath);
      out.write("css/glide.core.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print(basePath);
      out.write("css/glide.theme.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print(basePath);
      out.write("css/font-awesome.min.css\">\n");
      out.write("        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("          <script src=\"js/html5.js\"></script>\n");
      out.write("          <script src=\"js/respond.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"header\">\n");
      out.write("    <header>\n");
      out.write("    <h1>");
      out.print(Sitename);
      out.write("</h1>\n");
      out.write("    <div class=\"logo\"><a href=\"");
      out.print(basePath);
      out.write("\"><img src=\"");
      out.print(basePath);
      out.write("images/logo.png\" title=\"");
      out.print(Sitename);
      out.write("\"></a></div>\n");
      out.write("    <ul class=\"nav block\">\n");
      out.write("        <li><a href=\"");
      out.print(basePath);
      out.write("\">��ҳ</a></li>\n");
      out.write("        <li><a href=\"");
      out.print(basePath);
      out.write("news.jsp\">��Ѷ</a></li>\n");
      out.write("        <!--<li><a href=\"beer.jsp\">����</a></li>\n");
      out.write("        <li><a href=\"photos.jsp\">���</a></li>-->\n");
      out.write("        <li><a href=\"");
      out.print(basePath);
      out.write("talk.jsp\">����</a></li>\n");
      out.write("        <li><a href=\"");
      out.print(basePath);
      out.write("pay.jsp\">Ԥ��/����</a></li>\n");
      out.write("        <span id=\"navslip\"></span>\n");
      out.write("    </ul>\n");
      out.write("    <ul class=\"login right\">\n");
      out.write("    ");

      if(uname!=null){
       uname = (String)session.getAttribute("uname");
       out.println("<li><a id=\"user_login\">"
               + uname 
               +"��</a></li>"
                +"<li id=\"user_center\"><a href=\"#\">��������<i class=\"fa fa-sort-down\" style=\"padding: 0 0 0 10px\"></i></a>"
                +"<ul class=\"sub\">"
                +"<li><a href=\""+basePath+"goods_list.jsp\">������ʷ</a></li>"
                +"<li><a href=\""+basePath+"pay.jsp\">Ԥ��/����</a></li>"
                +"<li><a href=\""+basePath+"music.jsp\">�Ƽ�����</a></li>"
                +"<li><a href=\""+basePath+"email.jsp\">վ���ʼ�</a></li>"
                +"<li><a href=\""+basePath+"updata_user.jsp\">������Ϣ</a></li>"
                +"<li><a href=\""+basePath+"LoginOut" +"\">�˳���¼</a></li>"
            +"</ul>"
        +"</li>");
      }
    else {
    
      out.write("\n");
      out.write("    <li class=\"login_windows\"><a href=\"#\"><i class=\"fa fa-user\"></i>��½</a></li>\n");
      out.write("    <li><a href=\"");
      out.print(basePath);
      out.write("reg.jsp\"><i class=\"fa fa-user-plus\"></i>ע��</a></li>\n");
      out.write("    ");

    }
    
      out.write("\n");
      out.write("    </ul>\n");
      out.write("    </header>\n");
      out.write("</div>\n");
      out.write("<div id=\"login\">\n");
      out.write("    <div class=\"close\"><a href=\"#\"><i class=\"fa fa-close\"></i></a></div>\n");
      out.write("    <div class=\"title\">��Ա��½</div>\n");
      out.write("    <form action=\"");
      out.print(basePath);
      out.write("Login\" method=\"post\" name=\"Login_form\" id=\"login_form\">\n");
      out.write("        <label><i class=\"fa fa-user fa-2x\"></i></label><input type=\"text\" name=\"username\" id=\"username\" placeholder=\"�û���\">\n");
      out.write("        <label><i class=\"fa fa-lock fa-2x\"></i></label><input type=\"password\" size=\"15\" name=\"password\" id=\"password\" placeholder=\"����\">\n");
      out.write("        <div id=\"Ajax_Name\"></div>\n");
      out.write("        <label></label><input style=\"margin: 5px 20px 0 15px;padding: 0; width: auto; height: auto; float: left;display: inline-block;\" type=\"checkbox\" name=\"ck_MNBUser\"><div style=\"float: left;display: inline-block;font-size: 14px; margin-top: 3px; color: #222\">7�����Զ���½</div><br><div class=\"clear\"></div>\n");
      out.write("        <label></label><input type=\"submit\" id=\"submit\" name=\"Login_submit\" value=\"���ٵ�½\" ><a class=\"more\" href=\"");
      out.print(basePath);
      out.write("reg.jsp\">ע��</a><a class=\"more\" href=\"");
      out.print(basePath);
      out.write("get_pwd.jsp\">��������</a>\n");
      out.write("    </form>\n");
      out.write("</div>\n");
      out.write("<div id=\"login_bg\"></div>");
      out.write("\n");
      out.write("        <div class=\"focus\">\n");
      out.write("            <div class=\"module module--horizontal\">\n");
      out.write("                <div id=\"Slideshow\" class=\"glide\">\n");
      out.write("\n");
      out.write("                    <div class=\"glide__arrows\">\n");
      out.write("                        <button class=\"glide__arrow prev\" data-glide-dir=\"<\">prev</button>\n");
      out.write("                        <button class=\"glide__arrow next\" data-glide-dir=\">\">next</button>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"glide__wrapper\">\n");
      out.write("                        <ul class=\"glide__track\">\n");
      out.write("                            <li class=\"glide__slide\">\n");
      out.write("                                <div class=\"box\"><img src=\"");
      out.print(basePath);
      out.write("images/2.jpg\" style=\"height: 420px\" alt=\"peer\"></div>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"glide__slide\">\n");
      out.write("                                <div class=\"box\"><img src=\"");
      out.print(basePath);
      out.write("images/1.jpg\" style=\"height: 420px\" alt=\"you and me\"></div>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"glide__slide\">\n");
      out.write("                                <div class=\"box\"><img src=\"");
      out.print(basePath);
      out.write("images/3.jpg\" style=\"height: 420px\" alt=\"position\"></div>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"glide__bullets\"></div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "inc/top_news.jsp", out, true);
      out.write("\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "inc/news.jsp", out, true);
      out.write("\n");
      out.write("         \n");
      out.write("            <figure class=\"left\">\n");
      out.write("                <figcaption><i class=\"fa fa-file-photo-o\"></i>����5���Σ��ҵĸ���</figcaption>\n");
      out.write("                <img src=\"");
      out.print(basePath);
      out.write("images/112.jpg\">\n");
      out.write("            </figure>\n");
      out.write("            <figure class=\"left\">\n");
      out.write("                <figcaption><i class=\"fa fa-file-photo-o\"></i>���ڷ��������ѾƵ���</figcaption>\n");
      out.write("                <img src=\"");
      out.print(basePath);
      out.write("images/113.jpg\">\n");
      out.write("            </figure>\n");
      out.write("            <div class=\"clear\"></div>\n");
      out.write("            <div class=\"update\">\n");
      out.write("                <h1>MiniBarCMS��������</h1>\n");
      out.write("                <span>С�;ư����߹���ϵͳ���<mark>MiniBarCMS</mark>,��2010����<mark>Mr.Tao</mark>������������һ���汾</span>\n");
      out.write("                <div class=\"course_nr\">\n");
      out.write("                    <ul class=\"course_nr2\">\n");
      out.write("                        <li>\n");
      out.write("                            <div class=\"project\">\n");
      out.write("                                <h2>2010</h2>\n");
      out.write("                                <p>MiniBarCMS��һ�汾�����ɹ����������࣬�����Ӱ���˺�����ǰ���ع����⣬���ҹ��ܼ򵥵�minibarϵͳȷӵ��17.6M���������������Ӵ�</p>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <div class=\"project\">\n");
      out.write("                                <h2>2011</h2>\n");
      out.write("                                <p><strong>1��</strong>���¸�д��һЩ��֪�Ĵ���<br><strong>2��</strong>��FCKediter2.3��������FCKeditor2.4.6��<strong><br>3��</strong>������ǰ��̨LogoͼƬ��</p>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <div class=\"project\">\n");
      out.write("                                <h2>2016</h2>\n");
      out.write("                                <p><strong>1��</strong>����Json��ȡ�������ݣ���Ʒ���ݡ�\n");
      out.write("                                    <strong>2��</strong>FCKediter����Ϊueditor��\n");
      out.write("                                    <strong>3��</strong>ǰ���ع���\n");
      out.write("                                    <strong>4��</strong>����font-awesome����ͼ�ꡣ��10�����Ż��͸���</p>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"footer\">\n");
      out.write("<footer>\n");
      out.write("    <ul class=\"help\">\n");
      out.write("        <li><a href=\"");
      out.print(basePath);
      out.write("help/MiniBar_help.pdf\" target=\"_blank\"><i class=\"fa fa-question-circle\"></i>ʹ�ð���</a></li>\n");
      out.write("        <li><a href=\"tencent://Message/?Uin=574201314&websiteName=www.oicqzone.com&Menu=yes\"><i class=\"fa fa-qq\"></i>��ϵ������</a></li>\n");
      out.write("        <li><a href=\"#\"><i class=\"fa fa-bug\"></i>BUG�ύ</a></li>\n");
      out.write("        <li><a href=\"#\"><i class=\"fa fa-share-alt\"></i>�������ĵ�</a></li>\n");
      out.write("        <li><a href=\"#\"><i class=\"fa fa-link\"></i>�鿴�����߶�̬</a></li>\n");
      out.write("        <li><a href=\"#\"><i class=\"fa fa-cc-visa\"></i>�������ļ�Դ��</a></li>\n");
      out.write("    </ul>\n");
      out.write("    <div class=\"copy\">CopyRight &copy <mark>MiniBarCMS</mark> System. Power By Java MVC Model. Project create by <mark>Mr.tao</mark>.</div>\n");
      out.write("</footer>\n");
      out.write("</div>\n");
      out.write("<script src=\"");
      out.print(basePath);
      out.write("js/jQuery1.12.4.js\"></script>\n");
      out.write("<script src=\"");
      out.print(basePath);
      out.write("js/jquery.cookie.js\"></script>\n");
      out.write("<script src=\"");
      out.print(basePath);
      out.write("js/mbase64.js\"></script>\n");
      out.write("<script src=\"");
      out.print(basePath);
      out.write("js/glide.min.js\"></script>\n");
      out.write("<script src=\"");
      out.print(basePath);
      out.write("js/bar.js\" charset=\"utf-8\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
