<%@page import="dto.Employee"%>
<%@page import="dao.Employee_dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="x"
    uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Data</title>

<!-- Include Google Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap"
	rel="stylesheet">

<!-- Include Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<!-- Include particles.js library -->
<script
	src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>

<!-- Include Animate.css -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

<style>
body {
	font-family: 'Poppins', sans-serif;
	background: linear-gradient(135deg, #6B73FF 0%, #000DFF 100%);
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
	overflow: hidden;
	perspective: 1000px;
}

#particles-js {
	position: absolute;
	width: 100%;
	height: 100%;
	z-index: -1;
}

.form-container {
	background-color: #fff;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
	max-width: 400px;
	width: 100%;
	position: relative;
	animation: fadeIn 1s;
	transform-style: preserve-3d;
	overflow: hidden;
}

@
keyframes fadeIn { 0% {
	opacity: 0;
	transform: translateY(20px);
}

100%
{
opacity:1;
transform:translateY(0);
}
}
.input-container {
	display: flex;
	align-items: center;
	margin-bottom: 15px;
	position: relative;
}

.input-container i {
	margin-right: 5px;
	animation: bounce 2s infinite;
}

@keyframes bounce { 0%, 20%, 50%, 80%, 100% {
	transform: translateY(0);
}

40%
{
transform:translateY(-10px
);
}
60%
{
transform:translateY(-5px)
;


}
}
input[type="text"], input[type="date"] {
	flex: 1;
	border: 2px solid #6B73FF;
	border-radius: 5px;
	padding: 10px;
	font-size: 14px;
	transition: border-color 0.3s, box-shadow 0.3s;
}

input[type="text"]:focus, input[type="date"]:focus {
	border-color: #000DFF;
	outline: none;
	box-shadow: 0 0 10px rgba(0, 13, 255, 0.3);
}

button {
	cursor: pointer;
	border: none;
	outline: none;
	padding: 10px 20px;
	border-radius: 5px;
	font-size: 14px;
	font-weight: 600;
	transition: background-color 0.3s, transform 0.3s;
	margin-top: 10px;
	position: relative;
	z-index: 1;
	overflow: hidden;
}

button:before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-image: linear-gradient(135deg, rgba(255, 255, 255, 0.3) 0%,
		rgba(255, 255, 255, 0.1) 100%);
	z-index: -1;
	transition: opacity 0.3s;
}

button[type="reset"] {
	background-color: #000DFF;
	color: #fff;
	margin-right: 10px;
}

button[type="reset"]:hover {
	background-color: #4B50FF;
	transform: translateY(-3px);
}

button[type="reset"]:active {
	transform: translateY(1px);
}

button[type="submit"] {
	background-color: #000DFF;
	color: #fff;
}

button[type="submit"]:hover {
	background-color: #4B50FF;
	transform: translateY(-3px);
}

button[type="submit"]:active {
	transform: translateY(1px);
}

.form-title {
	font-weight: 600;
	font-size: 24px;
	margin-bottom: 15px;
	text-align: center;
	animation: titleAnimation 2s;
}

@keyframes titleAnimation { 0% {
	opacity: 0;
	transform: translateY(-20px);
}

100%
{
opacity:1;transform:
translateY(0);
}
}
.readonly-input {
	background-color: #f5f5f5;
	color: #333;
}
</style>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		particlesJS('particles-js', {
			"particles" : {
				"number" : {
					"value" : 80,
					"density" : {
						"enable" : true,
						"value_area" : 800
					}
				},
				"color" : {
					"value" : "#ffffff"
				},
				"shape" : {
					"type" : "circle",
					"stroke" : {
						"width" : 0,
						"color" : "#000000"
					},
					"polygon" : {
						"nb_sides" : 5
					},
				},
				"opacity" : {
					"value" : 0.5,
					"random" : false,
					"anim" : {
						"enable" : false,
						"speed" : 1,
						"opacity_min" : 0.1,
						"sync" : false
					}
				},
				"size" : {
					"value" : 3,
					"random" : true,
					"anim" : {
						"enable" : false,
						"speed" : 40,
						"size_min" : 0.1,
						"sync" : false
					}
				},
				"line_linked" : {
					"enable" : true,
					"distance" : 150,
					"color" : "#ffffff",
					"opacity" : 0.4,
					"width" : 1
				},
				"move" : {
					"enable" : true,
					"speed" : 6,
					"direction" : "none",
					"random" : false,
					"straight" : false,
					"out_mode" : "out",
					"bounce" : false,
					"attract" : {
						"enable" : false,
						"rotateX" : 600,
						"rotateY" : 1200
					}
				}
			},
			"interactivity" : {
				"detect_on" : "canvas",
				"events" : {
					"onhover" : {
						"enable" : true,
						"mode" : "repulse"
					},
					"onclick" : {
						"enable" : true,
						"mode" : "push"
					},
					"resize" : true
				},
				"modes" : {
					"grab" : {
						"distance" : 400,
						"line_linked" : {
							"opacity" : 1
						}
					},
					"bubble" : {
						"distance" : 400,
						"size" : 40,
						"duration" : 2,
						"opacity" : 8,
						"speed" : 3
					},
					"repulse" : {
						"distance" : 200,
						"duration" : 0.4
					},
					"push" : {
						"particles_nb" : 4
					},
					"remove" : {
						"particles_nb" : 2
					}
				}
			},
			"retina_detect" : true
		});

		// Add tilt.js library effect
		const tilt = $('.form-container').tilt({
			maxTilt : 5,
			scale : 1.05
		});
	});
</script>

<!-- Include tilt.js library -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/tilt.js/1.2.1/tilt.jquery.min.js"></script>
</head>
<body>
	<!-- Add particles.js container -->
	<div id="particles-js"></div>
	<div class="form-container">
		<div class="form-title">Insert Data</div>
		<x:form action="updateEmployee" method="post"
			modelAttribute="employee">
			<div class="input-container">
				<i class="fa-regular fa-id-badge fa-bounce"></i> <input type="text"
					name="id" placeholder="ID" readonly="readonly"
					class="readonly-input" value="${ employee.getId()}">

			</div>
			<div class="input-container">
				<i class="fas fa-user"></i>
				<x:input type="text" path="name" placeholder="Name" />
			</div>
			<div class="input-container">
				<i class="fas fa-phone-alt"></i>
				<x:input type="text" path="mobile" placeholder="Mobile" />
			</div>
			<div class="input-container">
				<i class="fas fa-money-check-alt"></i>
				<x:input type="text" path="salary" placeholder="Salary" />
			</div>
			<div class="input-container">
				<i class="fas fa-calendar-alt"></i> <input type="date" name="Doj"
					required value="${employee.getDate()}">
			</div>
			<button type="reset">
				<i class="fas fa-undo"></i> Reset
			</button>
			<button type="submit">
				<i class="fas fa-save"></i> Update
			</button>
		</x:form>
	</div>
</body>
</html>
