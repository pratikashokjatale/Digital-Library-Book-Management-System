<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Book Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
        }
        .container {
            width: 40%;
            background: white;
            padding: 20px;
            margin: 50px auto;
            box-shadow: 0px 0px 10px gray;
            border-radius: 10px;
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid gray;
            border-radius: 5px;
        }
        button {
            background-color: blue;
            color: white;
            padding: 10px;
            border: none;
            width: 100%;
            cursor: pointer;
        }
        button:hover {
            background-color: darkblue;
        }
        .error {
            color: red;
            font-size: 12px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Add a New Book</h2>
        <form action="editbook" id="bookForm">
            <label>Book ID:</label>
            <input type="text" value="${stu.bookID}" id="bookID" name="bookID" >
            

            <label>Title:</label>
            <input type="text" id="title" name="title" required>
            <div class="error" id="titleError"></div>

            <label>Author:</label>
            <input type="text" id="author" name="author" required>
            <div class="error" id="authorError"></div>

            <label>Genre:</label>
            <input type="text" id="genre" name="genre">

            <label>Availability:</label>
            <select id="availability" name="availability" required>
                <option value="Available">Available</option>
                <option value="Checked Out">Checked Out</option>
            </select>

            <button type="submit">Submit</button>
        </form>
        <p id="message"></p>
    </div>

   

</body>
</html>
