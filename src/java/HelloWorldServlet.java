
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/encryption")
public class HelloWorldServlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    request.getRequestDispatcher("/index.jsp").forward(request, response);
}


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        String text = request.getParameter("text");
        int key = Integer.parseInt(request.getParameter("key"));
        String result = "";

        if ("encrypt".equals(action)) {
            result = caesarCipher(text, key); //proses enkripsi dengan rumus menggeser huruf sesuai key (angka)
        } else if ("decrypt".equals(action)) {
            result = caesarCipher(text, -key); //proses dekripsi dengan rumus menggeser ke arah sebaliknya
        }

        request.setAttribute("chiperText", result);
        request.setAttribute("plainText", text);
        request.setAttribute("key", key);

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    private String caesarCipher(String text, int shift) {
        StringBuilder result = new StringBuilder();
        for (int i = 0; i < text.length(); i++) {
            char ch = text.charAt(i);
            if (Character.isLetter(ch)) {
                char base = Character.isLowerCase(ch) ? 'a' : 'A';
                ch = (char) ((ch - base + shift + 26) % 26 + base);

            }
            result.append(ch);
        }

        return result.toString();
    }
}
