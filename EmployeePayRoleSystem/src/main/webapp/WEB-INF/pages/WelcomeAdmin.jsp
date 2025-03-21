<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri= "http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Manager</title>
    <style>
    /* Reset styles */
/* Reset styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background: linear-gradient(45deg, #800080, #d9a2dc);
    color: white;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

/* Header styles */
header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #333;
    padding: 10px 20px;
    color: white;
}

.nav-link {
    color: white;
    text-decoration: none;
    margin-left: 20px;
    font-size: 16px;
}

.nav-link:hover {
    text-decoration: underline;
}

/* Main content styles */
main {
    flex: 1;
    text-align: center;
    padding: 20px;
}

.welcome-section h1 {
    font-size: 2.5rem;
    margin-bottom: 20px;
    animation: fadeIn 2s;
}

.buttons {
    display: flex;
    flex-direction: column;
    gap: 15px;
     height: 120px;
     width: 50%;
}

.animated-btn {
    background-color: black;
    color: white;
    padding: 20px 26px;
     /* Reduced padding for smaller size */
    border: none;
    font-size: 16px; /* Smaller font size */
    border-radius: 4px;
    margin-left: 50%;
    cursor: pointer;
    transition: transform 0.3s, box-shadow 0.3s;
    animation: fadeInUp 2s ease-out;
    text-decoration:none;
}

.animated-btn:hover {
    transform: scale(1.1);
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
}

/* Date display */
.date-display {
    margin-top: 20px;
    font-size: 1.2rem;
    animation: fadeIn 2s ease-in;
}

/* Animations */
@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

    
    </style>
</head>
<body>
    <header>
        <div class="header-left">My Employee Manager</div>
        <div class="header-right">
            <a href="#" class="nav-link">Home</a>
            <a href="#" class="nav-link">Signout</a>
        </div>
    </header>
    <main>
        <div class="welcome-section">
            <h1>Welcome ${username}</h1>
            <div class="buttons">
           <%--  <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css"> --%>
                <a href="<c:url value="/addemp"/>" class="animated-btn">Add New Employee</a>
                <a href="<c:url value="/adddept"/>"class="animated-btn">Add New Department</a>
                <a href="<c:url value="/addgrade"/>"class="animated-btn">Add New Grade</a>
                <a href="#" class="animated-btn">Employee Grade Details</a>
                <a href="#"class="animated-btn">Prepare Monthly Salary</a>
                <a href="#" class="animated-btn">Generate Report</a>
            </div>
        </div>
        
    </main>
</body>
</html>
