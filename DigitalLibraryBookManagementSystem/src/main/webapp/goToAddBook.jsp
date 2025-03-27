<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Book Form</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
          background-image: url('image/banner-bg.jpg');

            text-align: center;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 40%;
            background: white;
            padding: 25px;
            margin: 50px auto;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            text-align: left;
            transition: 0.3s ease-in-out;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 15px;
        }

        label {
            font-weight: 600;
            color: #333;
            display: block;
            margin-top: 10px;
        }

        input, select {
            width: 100%;
            padding: 12px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
            transition: 0.3s ease-in-out;
        }

        input:focus, select:focus {
            border-color: #3498db;
            outline: none;
            box-shadow: 0px 0px 5px rgba(52, 152, 219, 0.5);
        }

        button {
            background-color: #27ae60;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            width: 100%;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 15px;
        }

        button:hover {
            background-color: #2980b9;
        }

        .error {
            color: red;
            font-size: 0.85rem;
            margin-top: 5px;
            display: none;
        }

        @media (max-width: 768px) {
            .container {
                width: 80%;
                padding: 20px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Add a New Book</h2>
        <form action="addbook" id="bookForm">
            
            <label>Title:</label>
            <input type="text" id="title" name="title" required>
            <div class="error" id="titleError">Title is required.</div>

            <label>Author:</label>
            <input type="text" id="author" name="author" required>
            <div class="error" id="authorError">Author is required.</div>

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
