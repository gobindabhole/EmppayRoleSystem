<%@page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grade Details</title>
     <style type="text/css">
     body {
        font-family: Arial, sans-serif;
        background: linear-gradient(45deg, #800080, #d9a2dc);
        color: white;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
      }

      h1,
      h3 {
        text-align: center;
        color: #4b0082;
      }

      form {
        width: 80%;
        margin: 20px auto;
        background: linear-gradient(45deg, #800080, #d9a2dc);
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      }

      /* Form Elements */
      form label {
        font-size: 14px;
        font-weight: bold;
        margin-bottom: 5px;
        display: block;
        color: blacks;
      }

      form input[type="text"],
      form input[type="number"]
      {
        width: 60%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
      }

styled-select {
        width: 65%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
      }

      form button {
        background-color: #4b0082;
        color: #fff;
        border: none;
        padding: 10px 15px;
        font-size: 14px;
        border-radius: 4px;
        cursor: pointer;
        margin-right: 10px;
      }

      form button:hover {
        background-color: #6a0dad;
      }

      /* Table Styling */
      table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background: #fff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        overflow: hidden;
      }

      table th,
      table td {
        text-align: left;
        padding: 10px;
        border: 1px solid #ddd;
      }

      table th {
        background-color: #4b0082;
        color: white;
      }

      table tr:nth-child(even) {
        background-color: #f2f2f2;
      }

      table tr:hover {
        background-color: #ddd;
      }

      /* Footer */
      footer {
        text-align: center;
        padding: 10px;
        background-color: #4b0082;
        color: white;
        position: fixed;
        bottom: 0;
        width: 100%;
        font-size: 12px;
      }
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
      .form-group {
        display: flex; /* Flexbox layout */
        gap: 10px; /* Space between inputs */
        margin-bottom: 15px; /* Space between rows */
      }
      .date-container {
        position: absolute;
        right: 0;
        top: 50px; /* Adjust as needed */
        padding: 10px;
        color: #4b0082;
      }
    
    </style>
</head>
<body>
    <div class="container">
     <header>
        <div class="header-left">My Employee Manager</div>
        <div class="header-right">
            <a href="#" class="nav-link">Home</a>
            <a href="#" class="nav-link">Signout</a>
        </div>
    <div class="date-container">
        <h5>Today's Date</h5><p id="date-display"></p>
    </div>
        </header>
            <script>
        // Get today's date
        const today = new Date();

        // Format the date as desired (e.g., DD-MM-YYYY)
        const formattedDate = today.toLocaleDateString('en-US', {
            year: 'numeric', // e.g., "2023"
            month: 'long',   // e.g., "December"
            day: 'numeric'   // e.g., "7"
        });

        // Display the date in the <p> element
        document.getElementById('date-display').textContent = formattedDate;
    </script>
     <h1>Welcome Admin</h1>
     <h3>Grade Details</h3>
        <div>
        
        
        <c:form modelAttribute="gradesystem" action="grade" method="post" class="grade-form" >
        <div class="form-group">
        <div style="flex: 1;">
                <c:label path="gradeName">Grade Name</c:label>
                <c:input type="text" id="gradeName" path="gradeName" placeholder="Enter Grade Name"
                htmlEscape="false" />
         </div>
         <div style="flex: 1;">
                <c:label path="gradeShortName">Grade Short Name</c:label>
                <c:input type="text" id="gradeShortName" path="gradeShortName" placeholder="Enter Grade Short Name"
                htmlEscape="false" />
         </div>
         </div>
         <div class="form-group">
         <div style="flex: 1;">
                <c:label path="basic">Basic</c:label>
                <c:input type="number" id="basic" path="basic" placeholder="Enter Basic Salary"
                htmlEscape="false" />
          </div>
          <div style="flex: 1;">
                <c:label path="travelAllowance">Travel Allowance</c:label>
                <c:input type="number" id="travelAllowance" path="travelAllowance" placeholder="Enter Travel Allowance" 
                htmlEscape="false" />
           </div>
           </div>
           <div class="form-group">
           <div style="flex: 1;">
                <c:label path="medicalAllowance">Medical Allowance</c:label>
                <c:input type="number" id="medicalAllowance" path="medicalAllowance" placeholder="Enter Medical Allowance"
                htmlEscape="false" />
            </div>
            <div style="flex: 1;">
                <c:label path="providentFund">Provident Fund</c:label>
                <c:input type="number" id="providentFund" path="providentFund" placeholder="Enter Provident Fund"
                htmlEscape="false" />
            </div>
            </div>
            <div class="form-group">
            <div style="flex: 1;">
                <c:label path="dearnessAllowance">Dearness Allowance</c:label>
                <c:input type="number" id="dearnessAllowance" path="dearnessAllowance" placeholder="Enter Dearness Allowance"
                htmlEscape="false" />
            </div>
            <div style="flex: 1;">
                <c:label path="hra">HRA</c:label>
                <c:input type="number" id="hra" path="hra" placeholder="Enter House Rent Allowance"
                htmlEscape="false" />
            </div>
            </div>
            <div class="form-group">
            <div style="flex: 1;">
                <c:label path="bonus">Bonus</c:label>
                <c:input type="number" id="bonus" path="bonus" placeholder="Enter Bonus"
                htmlEscape="false" />
            </div>
            <div style="flex: 1;">
                <c:label path="professionalTax">Professional Tax</c:label>
                <c:input type="number" id="professionalTax" path="professionalTax" placeholder="Enter Professional Tax"
                htmlEscape="false" />
            </div>
            </div>
            <div style="flex: 1;">
                <c:button type="submit" value="addGrade">Add Grade</c:button>
                <c:button type="reset">Clear</c:button>
            </div>
            
        </c:form>
        </div>
        
    </div>
    </body>
    </html>
