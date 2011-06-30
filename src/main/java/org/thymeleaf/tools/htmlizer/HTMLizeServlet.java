package org.thymeleaf.tools.htmlizer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HTMLizeServlet extends HttpServlet {

    private static final long serialVersionUID = 1662057535239464670L;

    
    
    public HTMLizeServlet() {
        super();
    }



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        final String text = req.getParameter("text");
        
        final String htmlized = HTMLizer.htmlize(text);
        
        resp.setContentType("text/html");
        
        final PrintWriter out  = resp.getWriter();
        
        out.write("<html>\n");
        out.write("<body>\n");
        out.write("<style>\n");
        out.write("  .string { color: blue; }\n");
        out.write("  .comment { font-style: italic; color: green; }\n");
        out.write("</style>\n");
        
        out.write("<code>\n\n\n");
        out.write(htmlized);
        out.write("\n\n</code>\n");
        
        out.write("</body>\n");
        out.write("</html>\n");
        
        out.close();
        
    }

    
    
}
