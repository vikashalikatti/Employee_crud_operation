<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management</title>
<link rel="stylesheet" href="styles.css">
<link href="">
<link rel="stylesheet" href="path/to/bootstrap.min.css">
<script src="https://kit.fontawesome.com/49b30a67fc.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="home.js"></script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap');

body {
    font-family: 'Roboto', Arial, sans-serif;
    background-color: #000000;
    height: 100vh;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
    overflow: hidden;
}

#particles {
    position: absolute;
    top: 0;
    left: 0;
    z-index: -1;
}

.container {
    width: 80%;
    padding: 20px;
    background-color: rgba(57, 62, 70, 0.5);
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    animation: fadeIn 1s ease-in;
    text-align: center;
    position: relative;
    z-index: 1;
}


@keyframes fadeIn {
    0% { opacity: 0; }
    100% { opacity: 1; }
}

.fas.fa-industry {
    font-size: 4rem;
    color: #F7DC6F;
    margin-bottom: 20px;
}

h1 {
    text-align: center;
    margin-bottom: 30px;
    font-weight: 500;
    color: #F7DC6F;
    text-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

form {
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
}

button {
    font-weight: 500;
    padding: 15px 30px;
    border: none;
    background-image: linear-gradient(45deg, #3498db, #2980b9);
    color: #fff;
    cursor: pointer;
    transition: all 0.3s ease;
    border-radius: 5px;
    font-size: 1.1rem;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

button:hover {
    background-image: linear-gradient(45deg, #239D57, #28B463);
    transform: translateY(-3px);
    box-shadow: 0 6px 8px rgba(0, 0, 0, 0.2);
}

button:active {
    transform: translateY(1px);
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

</style>
</head>
<body>
${msg}
<div class="container">
        <i class="fas fa-industry"></i>
        <h1>Employee Management</h1>
        <a href="Loademployee"><button  type="submit">Insert Employee</button></a>
        <a href="fetchall"><button  type="submit">Fetch All Employee</button></a>
        <a><button  type="submit">Fetch Employee By ID</button></a>
    </div>
    <script type="text/javascript" src="home.js"></script>
    <script src="path/to/bootstrap.min.js"></script>
    <script>
    class Particle {
        constructor() {
            this.x = Math.random() * window.innerWidth;
            this.y = Math.random() * window.innerHeight;
            this.size = Math.random() * 5 + 1;
            this.speedX = Math.random() * 3 - 1.5;
            this.speedY = Math.random() * 3 - 1.5;
        }

        update() {
            this.x += this.speedX;
            this.y += this.speedY;

            if (this.size > 0.2) this.size -= 0.1;

            if (this.x < 0 || this.x > window.innerWidth) {
                this.speedX *= -1;
            }

            if (this.y < 0 || this.y > window.innerHeight) {
                this.speedY *= -1;
            }
        }

        draw() {
            ctx.fillStyle = 'rgba(255, 255, 255, 0.8)';
            ctx.strokeStyle = 'rgba(34, 147, 214, 0.8)';
            ctx.lineWidth = 2;
            ctx.beginPath();
            ctx.arc(this.x, this.y, this.size, 0, Math.PI * 2);
            ctx.closePath();
            ctx.fill();
            ctx.stroke();
        }
    }

    const canvas = document.createElement('canvas');
    canvas.id = 'particles';
    document.body.appendChild(canvas);
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
    const ctx = canvas.getContext('2d');

    const particlesArray = [];
    const numberOfParticles = 100;

    for (let i = 0; i < numberOfParticles; i++) {
        particlesArray.push(new Particle());
    }

    function animate() {
        ctx.clearRect(0, 0, canvas.width, canvas.height);

        for (let i = 0; i < particlesArray.length; i++) {
            particlesArray[i].update();
            particlesArray[i].draw();
        }

        requestAnimationFrame(animate);
    }

    animate();
    </script>
</body>
</html>