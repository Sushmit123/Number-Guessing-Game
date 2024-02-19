import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/GuessingGameServlet")
public class GuessingGameServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        // Check if the game has started
        if (session.getAttribute("numberToGuess") == null) {
            // Generate a random number between 1 and 100
            int numberToGuess = new Random().nextInt(100) + 1;
            session.setAttribute("numberToGuess", numberToGuess);
            session.setAttribute("attempts", 0);
        }

        request.getRequestDispatcher("/guessingGame.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
       HttpSession session = request.getSession();
      // Get user's guess
      int userGuess = Integer.parseInt(request.getParameter("userGuess"));

       // Get the number to guess
       int numberToGuess = (int) session.getAttribute("numberToGuess");

       // Increment attempts or initialize to 1 if it doesn't exist
       int attempts = (session.getAttribute("attempts") != null) ? 
                       ((int) session.getAttribute("attempts") + 1) : 1;
       session.setAttribute("attempts", attempts);

        // Check if the guess is correct
     if (userGuess == numberToGuess) {
           // Set an attribute indicating a successful guess
          session.setAttribute("correctGuess", true);
           response.sendRedirect("gameOver.jsp");
       } else {
            // Provide feedback and continue the game
           String feedback = (userGuess < numberToGuess) ? "Too low!" : "Too high!";
            session.setAttribute("feedback", feedback);
           response.sendRedirect("GuessingGameServlet");
       }
    }

  
   

}
