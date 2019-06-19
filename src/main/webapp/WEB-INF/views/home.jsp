<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tabela dzieci</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<table id="myTable">
    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Wyszukaj po imieniu">
    <input type="button" value="Dodaj do bazy" onclick="location.href = '/add'">
    <tr class="header">
        <th align="left">id</th>
        <th align="left">imię</th>
        <th align="left">data urodzenia</th>
        <th align="left">id rodzica 1</th>
        <th align="left">id rodzica 2</th>
    </tr>
    <c:forEach items="${children}" var="child">
    <tr>
        <td>${child.id}</td>
        <td>${child.name}</td>
        <td>${child.birthDate}</td>
        <td>${child.parent1id}</td>
        <td>${child.parent2id}</td>
    </tr>
    </c:forEach>
</table>

<script>
    function myFunction() {
        // Declare variables
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");

        // Loop through all table rows, and hide those who don't match the search query
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[1];
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
</script>
</body>
</html>