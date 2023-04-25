<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <style>
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }

        h1 {
            color: #444;
            text-align: center;
            font-size: 2.5rem;
        }

        button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }

        #graphicsContainer {
            width: 100%;
            height: 400px;
        }
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.4.0/p5.min.js"></script>
    <script>
        // Example of using p5.js library for advanced graphics
        function setup() {
            let canvas = createCanvas(windowWidth, 400);
            canvas.parent("graphicsContainer");
        }

        function draw() {
            background(240);
            fill(255, 0, 0);
            ellipse(mouseX, mouseY, 50, 50);
        }
    </script>
</head>
<body>
    <h1>${msg}</h1> <br>
    <a href="Home.jsp"><button>Home</button></a>
    <div id="graphicsContainer"></div>
</body>
</html>
