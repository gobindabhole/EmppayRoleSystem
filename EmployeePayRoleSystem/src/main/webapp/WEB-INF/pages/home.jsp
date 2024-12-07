<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payroll System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e6ffee;
            text-align: center;
        }
        .header {
            background-color: #006600;
            color: white;
            padding: 20px;
            font-size: 30px;
            font-weight: bold;
        }
        .logo img {
            height: 50px;
        }
        .login-area {
            margin-top: 50px;
            display: inline-block;
            background-color: #ffffff;
            border: 2px solid #006600;
            padding: 20px;
            border-radius: 10px;
        }
        .login-area h2 {
            color: #006600;
        }
        .input-group input {
            width: 90%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        .login-btn {
            background-color: #006600;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }
        .login-btn:hover {
            background-color: #004d00;
        }
    </style>
</head>
<body>
    <div class="header">
        <span class="logo"><img src="https://img.icons8.com/ios-filled/50/ffffff/money-bag.png" alt="Logo"></span>
        PAYROLL SYSTEM
    </div>
    <div class="login-area">
        <h2>Login Area</h2>
        <frm:form action="login_try" method="POST" modelAttribute="Adminch">
            <div class="input-group">
                <label for="loginName">LoginName:</label>
                <frm:input id="loginName" path="loginName" htmlEscape="false"/>
            </div>
            <div class="input-group">
                <label for="password">Password:</label>
                <frm:input id="password" path="pass" htmlEscape="false"/>
            </div>
            <div class="radio-group">
                <label>
                    <frm:radiobutton path="role" value="Admin" /> Admin
                </label>
                <label>
                    <frm:radiobutton path="role" value="Employee" /> Employee
                </label>
            </div>
            <button type="submit" class="login-btn">Register</button>
        </frm:form>
    </div>
</body>
</html>
