<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tabela dzieci</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<form method="post">
    Imię:<br>
    <input type="text" name="name" required><br>
    Data urodzenia:<br>
    <input type="date" id="dateId" name="birthDate" required><br>
    Id pierwszego rodzica:<br>
    <input type="number" name="parent1id" min="1" max="20"><br>
    Id drugiego rodzica:<br>
    <input type="number" name="parent2id" min="1" max="20"><br>
    <input type="submit" value="Dodaj">
</form>
</body>
</html>