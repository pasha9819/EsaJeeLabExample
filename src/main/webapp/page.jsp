<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <td>State Number</td>
        <td>Model</td>
        <td>Year</td>
        <td>Color</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${carsList}" var="car">
        <tr>
            <td>${car.stateNumber}</td>
            <td>${car.model}</td>
            <td>${car.year}</td>
            <td>${car.color.name}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
