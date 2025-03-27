<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Library Management System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');

        * {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        body {
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            flex-direction: column;
        }

        h1 {
            font-size: 2.5rem;
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            background: #fff;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 15px;
            text-align: center;
        }

        th {
            background: #27ae60;
            color: white;
            font-weight: 500;
        }

        tr:nth-child(even) {
            background: #f2f2f2;
        }

        tr:hover {
            background: #d1f2eb;
        }

        .action-btn {
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            color: white;
        }

        .edit-btn {
            background: #3498db;
        }

        .edit-btn:hover {
            background: #2980b9;
        }

        .delete-btn {
            background: #e74c3c;
        }

        .delete-btn:hover {
            background: #c0392b;
        }

        a {
            color: white;
            text-decoration: none;
        }
        
    </style>
</head>

 <img class="animated-image" src="https://cdn-icons-png.flaticon.com/512/2232/2232688.png" width="10%" alt="Animated Book">
 


 
<h1>Library Book List</h1>
<table border="0">
    <tr>
        <th>Book ID</th>
        <th>Title</th>
        <th>Author</th>
        <th>Genre</th>
        <th>Availability</th>
        <th>Actions</th>
    </tr>

    <c:forEach items="${data}" var="book">
        <tr>
            <td>${book.bookID}</td>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>${book.genre}</td>
            <td>${book.availability}</td>
            <td>
                <button class="action-btn edit-btn"><a href="edit?bookID=${book.bookID}"><i class="fas fa-edit"></i> Edit</a></button>
                <button class="action-btn delete-btn"><a href="delete?bookID=${book.bookID}"><i class="fas fa-trash"></i> Delete</a></button>
            </td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
