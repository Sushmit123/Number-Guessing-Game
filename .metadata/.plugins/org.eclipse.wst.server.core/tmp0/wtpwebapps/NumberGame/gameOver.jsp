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
    background-color: #f8f8f8;
    margin: 0;
    padding: 0;
    text-align: center;
}

h1 {
    color: #28a745;
    margin-top: 100px;
}

p {
    color: #333;
    margin-top: 20px;
}

</style>

</head>
<body>
 <h1>Congratulations! You guessed the number!</h1>
    <p>It took you ${sessionScope.attempts} attempts.</p>
</body>
</html>