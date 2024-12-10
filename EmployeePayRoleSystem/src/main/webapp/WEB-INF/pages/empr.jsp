<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Employee Management System</title>
    <style>
      /* General Styling */
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
      form input[type="number"],
      form input[type="email"],
      form input[type="date"],
      form input[type="file"] {
        width: 60%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
      }

      .styled-select {
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
      .form-row {
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
 <header>
      <div class="header-left">My Employee Manager</div>
      <div class="header-right">
        <a href="#" class="nav-link">Home</a>
        <a href="#" class="nav-link">Signout</a>
      </div>
    </header>
    <div class="date-container">
      <h5>Today's Date</h5>
      <p id="date-display"></p>
    </div>

    <script>
      // Get today's date
      const today = new Date();

      // Format the date as desired (e.g., DD-MM-YYYY)
      const formattedDate = today.toLocaleDateString("en-US", {
        year: "numeric", // e.g., "2023"
        month: "long", // e.g., "December"
        day: "numeric", // e.g., "7"
      });

      // Display the date in the <p> element
      document.getElementById("date-display").textContent = formattedDate;
    </script>
    <h1>Welcome ${adminname}</h1>
    <h3>Employee Details</h3>
    <div class="form-container">
      <c:form action="EmpreSucess" method="post" modelAttribute="stu">
        <div class="form-row">
          <div style="flex: 1">
            <label for="employee-title">Employee Title:</label>
            <c:select
              id="employee-title"
             
              class="styled-select"
              title="Employee Title"
              path="employee_title"
              htmlEscape="false"
            >
              <c:option  value="">Select a title</c:option>
              <c:option  value="manager">Manager</c:option>
              <c:option   value="assistant-manager">Assistant Manager</c:option>
              <c:option  value="team-lead">Team Lead</c:option>
              <c:option  value="senior-developer">Senior Developer</c:option>
              <c:option  value="junior-developer">Junior Developer</c:option>
              <c:option  value="intern">Intern</c:option>
              <c:option  value="hr-specialist">HR Specialist</c:option>
              <c:option  value="marketing-executive">Marketing Executive</c:option>
            </c:select>
          </div>
          <div style="flex: 1">
            <label for="employeeName">Employee Name:</label>
            <c:input
              type="text"
              id="employeeName"
             
             htmlEscape="false"
              placeholder="Enter employee name"
              path="employee_name"
            />
          </div>
        </div>
        <div class="form-row">
          <div style="flex: 1">
            <label>Date of Birth:</label>
            <c:input
              type="date"
             
             htmlEscape="false"
              placeholder="Enter date of Birth"
               path="employee_DOB"
            />
          </div>
          <div style="flex: 1">
            <label>Date of Joining:</label>
            <c:input
              type="date"
          
             htmlEscape="false"
              placeholder="Enter date of Joining"
               path="employee_nameDOJ"
            /><br />
          </div>
        </div>
        <div class="form-row">
          <div style="flex: 1">
            <label>Address:</label>
            <c:input
              type="text"
              
            htmlEscape="false"
              placeholder="Enter the Address"
               path="employee_Adress"
            />
          </div>
          <div style="flex: 1">
            <label for="state">State:</label>
            <c:select id="state"  class="styled-select" path="emp_state" htmlEscape="false">
              <c:option  value="" >Select</c:option>
              <c:option   value="Andhra_Pradesh">Andhra Pradesh</c:option>
              <c:option   value="Arunachal_Pradesh">Arunachal Pradesh</c:option>
              <c:option   value="assam">Assam</c:option>
              <c:option    value="bihar">Bihar</c:option>
              <c:option    value="chhattisgarh">Chhattisgarh</c:option>
              <c:option    value="goa">Goa</c:option>
              <c:option   value="gujarat">Gujarat</c:option>
              <c:option    value="haryana">Haryana</c:option>
              <c:option   value="himachal-pradesh">Himachal Pradesh</c:option>
              <c:option   value="jharkhand">Jharkhand</c:option>
              <c:option  value="karnataka">Karnataka</c:option>
              <c:option   value="kerala">Kerala</c:option>
              <c:option  value="madhya-pradesh">Madhya Pradesh</c:option>
              <c:option  value="maharashtra">Maharashtra</c:option>
              <c:option   value="manipur">Manipur</c:option>
              <c:option  value="meghalaya">Meghalaya</c:option>
              <c:option  value="mizoram">Mizoram</c:option>
              <c:option  value="nagaland">Nagaland</c:option>
              <c:option  value="odisha">Odisha</c:option>
              <c:option  value="punjab">Punjab</c:option>
              <c:option  value="rajasthan">Rajasthan</c:option>
              <c:option  value="sikkim">Sikkim</c:option>
              <c:option  value="tamil-nadu">Tamil Nadu</c:option>
              <c:option   value="telangana">Telangana</c:option>
              <c:option   value="tripura">Tripura</c:option>
              <c:option   value="uttar-pradesh">Uttar Pradesh</c:option>
              <c:option value="uttarakhand">Uttarakhand</c:option>
              <c:option  value="west-bengal">West Bengal</c:option></c:select
            ><br />
          </div>
        </div>
        <div class="form-row">
          <div style="flex: 1">
            <label>City:</label>
            <c:input
              type="text"
             
              htmlEscape="false"
              placeholder="Enter City name"
              path="emp_city"
            />
          </div>
          <div style="flex: 1">
            <label> PinCode:</label>
            <c:input
              type="number"
             
             htmlEscape="false"
              placeholder="Enter the pincode"
              path="emp_pin"
            /><br />
          </div>
        </div>
        <div class="form-row">
          <div style="flex: 1">
            <label>Mobile No:</label>
            <c:input
              type="number"
           
              htmlEscape="false"
              placeholder="Enter phone number"
              path="emp_phno"
            />
          </div>
          <div style="flex: 1">
            <label>Email ID:</label>
            <c:input
              type="email"
             
             htmlEscape="false"
              placeholder="Enter  Email Id"
              path="emp_mail"
              
            /><br />
          </div>
        </div>
        <div class="form-row">
          <div style="flex: 1">
            <label>PAN Card No:</label>
            <c:input
              type="text"
             
              htmlEscape="false"
              placeholder=" pan card NO"
              path="emp_pancardno"
            />
          </div>
          <div style="flex: 1">
            <label>Upload PAN Card Image:</label>
            <c:input type="file"  placeholder="pan card" path="emp_pan" htmlEscape="false"/><br /><br />
          </div>
        </div>
        <button type="submit">Submit</button>
        <button type="reset">Clear</button>
      </c:form>
    </div>

</body>
</html>