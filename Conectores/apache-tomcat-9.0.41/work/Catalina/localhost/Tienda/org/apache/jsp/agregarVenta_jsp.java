/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.41
 * Generated at: 2023-11-21 12:26:38 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class agregarVenta_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/Users/ET36/Documents/NetBeansProjects/Tienda/build/web/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153395882000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1700569582536L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Tienda - Vender</title>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles.css\">\r\n");
      out.write("        <link rel=\"icon\" href=\"tienda.ico\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        \r\n");
      out.write("        <header>\r\n");
      out.write("            <nav class=\"navbar fixed-top navbar-expand-lg navbar-dark  bg-dark\" style=\"min-height: 9vh;\">\r\n");
      out.write("                <a class=\"navbar-brand\" href=\"/Tienda\"><img src=\"tienda.ico\" style=\"height:5vh\"></a>\r\n");
      out.write("                <button class=\"navbar-toggler\"  type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                  <span class=\"navbar-toggler-icon\" ></span>\r\n");
      out.write("                </button>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("                  <div class=\"mr-auto\">\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <form class=\"form-inline my-2 my-lg-0\" action=\"Buscar\" method=\"post\">\r\n");
      out.write("                    <select id=\"categoria\" name=\"categoriasH\" class=\"btn btn-light\">\r\n");
      out.write("                        <option value=\"\">Seleccione Categoría</option>  \r\n");
      out.write("                        <option value=\"Carniceria\">Carnicería</option>  \r\n");
      out.write("                        <option value=\"Verduleria\">Verdulería</option>  \r\n");
      out.write("                        <option value=\"Panaderia\">Panadería</option>\r\n");
      out.write("                        <option value=\"Agua\">Agua</option>\r\n");
      out.write("                        <option value=\"Jugo\">Jugo</option>\r\n");
      out.write("                        <option value=\"Gaseosa\">Gaseosa</option>\r\n");
      out.write("                    </select>\r\n");
      out.write("                    <input type=\"submit\" value=\"Filtrar\" class=\"btn btn-light\" style=\"margin-left: 1vh;\">\r\n");
      out.write("                  </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </nav>\r\n");
      out.write("        </header>\r\n");
      out.write("        \r\n");
      out.write("        <div style=\"margin-top: 9vh; position: relative;\">\r\n");
      out.write("            <img class=\"img fluid imgFondo\" src=\"tienda.jpg\" style=\"width: 100%\">\r\n");
      out.write("            <div class=\"text-center\" style=\"background-color: rgba(255, 255, 255, 0.8); width: 60%; top: 15%; position: absolute; margin-left: 20%; margin-right: 20%;\">\r\n");
      out.write("                <h1>Venta</h1>\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"col\">\r\n");
      out.write("                        \r\n");
      out.write("                        <form action=\"Carrito\" method=\"post\">\r\n");
      out.write("                            <h3>Agregar al Carrito</h3>\r\n");
      out.write("                            <div class=\"form-group row\" style=\"margin-bottom: 2vh\">\r\n");
      out.write("                                <label for=\"ID\" class=\"col-sm col-form-label\" style=\"margin: 0;\">ID:</label>\r\n");
      out.write("                                <div class=\"col-sm\">\r\n");
      out.write("                                    <input type=\"number\" class=\"btn btn-dark\" id=\"ID\" name=\"ID\" placeholder=\"Ingrese ID...\" min=\"1\" required>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-sm\"></div>\r\n");
      out.write("                            </div>\r\n");
      out.write("           \r\n");
      out.write("                            <div class=\"form-group row\" style=\"margin-bottom: 2vh\">\r\n");
      out.write("                                <label for=\"cantidad\" class=\"col-sm col-form-label\" style=\"margin: 0;\">Cantidad:</label>\r\n");
      out.write("                                <div class=\"col-sm\">\r\n");
      out.write("                                    <input type=\"number\" class=\"btn btn-dark\" id=\"cantidad\" name=\"cantidad\" placeholder=\"Ingrese cantidad...\" min=\"1\" required>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-sm\"></div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <input type=\"submit\" value=\"Agregar\" class=\"btn btn-dark\" style=\"margin-bottom:1vh\">\r\n");
      out.write("                        </form>\r\n");
      out.write("                                    \r\n");
      out.write("                        <form action=\"EliminarCarrito\" method=\"post\">\r\n");
      out.write("                            <h3>Eliminar del Carrito</h3>\r\n");
      out.write("                            <div class=\"form-group row\" style=\"margin-bottom: 2vh\">\r\n");
      out.write("                                <label for=\"ID\" class=\"col-sm col-form-label\" style=\"margin: 0;\">ID:</label>\r\n");
      out.write("                                <div class=\"col-sm\">\r\n");
      out.write("                                    <input type=\"number\" class=\"btn btn-dark\" id=\"IDCarrito\" name=\"IDCarrito\" placeholder=\"Ingrese ID...\" min=\"1\" required>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-sm\"></div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <input type=\"submit\" value=\"Eliminar\" class=\"btn btn-dark\" style=\"margin-bottom:1vh\">\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"col scroll\">\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            ");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            \r\n");
      out.write("                <form action=\"Vender\" method=\"post\">   \r\n");
      out.write("                  <input type=\"submit\" value=\"Realizar Venta\" class=\"btn btn-dark\" style=\"margin-bottom:1vh\">\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js\"></script>\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\"></script>\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /agregarVenta.jsp(84,28) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/agregarVenta.jsp(84,28) '${carrito}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${carrito}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      // /agregarVenta.jsp(84,28) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("item");
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("                                <li>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${item.nombre}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(',');
            out.write(' ');
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${item.cantidad}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(" unidad/es, $");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${item.precio}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</li>\r\n");
            out.write("                            ");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }
}
