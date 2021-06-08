package servlets;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Note;

public class NoteServlet extends HttpServlet {

    Note note;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String path = getServletContext().getRealPath("/WEB-INF/note.txt");

        try {
            // to read files
            BufferedReader br = new BufferedReader(new FileReader(new File(path)));
            // reading in the lines of the txt file
            String title = br.readLine();
            String content = br.readLine();
            note = new Note(title, content);

            br.close();

            request.setAttribute("note", note);
            String edit = request.getParameter("edit");

            // when the edit button is pressed
            if (edit != null) {
                getServletContext().getRequestDispatcher("/WEB-INF/editnote.jsp").forward(request, response);
            } else {
                getServletContext().getRequestDispatcher("/WEB-INF/viewnote.jsp").forward(request, response);
            }

        } catch (Exception e) {

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String path = getServletContext().getRealPath("/WEB-INF/note.txt");
        // to write to a file
        PrintWriter pw = new PrintWriter(new BufferedWriter(new FileWriter(path, false)));

        String title = request.getParameter("title");
        String content = request.getParameter("content");

        pw.write(title + "\n");
        pw.write(content + "\n");
        note = new Note(title, content);
        request.setAttribute("note", note);
        pw.close();

        getServletContext().getRequestDispatcher("/WEB-INF/viewnote.jsp").forward(request, response);
    }
}
