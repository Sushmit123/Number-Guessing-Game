<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

h1 {
    color: #333;
    text-align: center;
}

form {
    max-width: 400px;
    margin: 20px auto;
    padding: 20px;
    background-color: whitesmoke;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
}

label {
    display: block;
    margin-bottom: 10px;
    color: #333;
}

input[type="number"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    box-sizing: border-box;
}

button {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}

.high {
   color: red;
   text-align: center;
   font-size: 20px
}
</style>
</head>
<body>
  <h1>Guessing Game</h1>
    <form action="GuessingGameServlet" method="post">
        <label>Enter your guess:</label>
        <input type="number" name="userGuess" required>
        <button type="submit">Submit</button>
        
        
    </form>

  
 <c:if test="${not empty sessionScope.feedback}">
        <p class="high">${sessionScope.feedback}</p>
    </c:if>
   
    
 
</body>
</html>