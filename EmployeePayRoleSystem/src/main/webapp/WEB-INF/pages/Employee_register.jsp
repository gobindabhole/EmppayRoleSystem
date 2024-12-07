<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<!DOCTYPE html>
<html>
<head>
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



h1, h3 {
    text-align: center;
    color: #4B0082;
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
form input[type="file"]
{
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
    background-color: #4B0082;
    color: #fff;
    border: none;
    padding: 10px 15px;
    font-size: 14px;
    border-radius: 4px;
    cursor: pointer;
    margin-right: 10px;
}

form button:hover {
    background-color: #6A0DAD;
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

table th, table td {
    text-align: left;
    padding: 10px;
    border: 1px solid #ddd;
}

table th {
    background-color: #4B0082;
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
    background-color: #4B0082;
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
            display: flex;               /* Flexbox layout */
            gap: 10px;                   /* Space between inputs */
            margin-bottom: 15px;         /* Space between rows */
        }
.date-container
{
    position: absolute;
            right: 0;
            top: 50px; /* Adjust as needed */
            padding: 10px;
    color: #4B0082;
            
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
        <h5>Today's Date</h5><p id="date-display"></p>
    </div>

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
    <h3>Employee Details</h3>
    <div class="form-container">
   
    <frm:form action="EmployeeServlet" method="post" enctype="multipart/form-data">
            
            <div class="form-row">
            <div style="flex: 1;">
            
        <label for="Employee_Title">Employee Title:</label>
        <frm:select id="Employee_Title:" path="Employee_Title:" class="styled-select">
            <option value="" disabled selected>Select a title</option>
            <option value="manager">Manager</option>
            <option value="assistant-manager">Assistant Manager</option>
            <option value="team-lead">Team Lead</option>
            <option value="senior-developer">Senior Developer</option>
            <option value="junior-developer">Junior Developer</option>
            <option value="intern">Intern</option>
            <option value="hr-specialist">HR Specialist</option>
            <option value="marketing-executive">Marketing Executive</option>
        </frm:select>
    </div>
    <div style="flex: 1;">
        <label>Employee Name:</label>
        <frm:input type="text" path="employeeName" required /><br>
</div>
</div>
<div class="form-row">
    <div style="flex: 1;">
        <label>Date of Birth:</label>
        <frm:input type="date" path="dob" required />
    </div>
    <div style="flex: 1;">

        <label>Date of Joining:</label>
        <frm:input type="date" path="doj" required /><br/>
</div>
</div>
        <div class="form-row">
            <div style="flex: 1;">
        <label>Address:</label>
        <frm:input type="text" path="address" required />
    </div>
    <div style="flex: 1;">

        <label for="state">State:</label>
        <frm:select id="state" path="state" class="styled-select">
            <option value="" disabled selected>Select</option>
            <option value="Andhra_Pradesh">Andhra Pradesh</option>
            <option value="Arunachal_Pradesh">Arunachal Pradesh</option>
            <option value="assam">Assam</option>
            <option value="bihar">Bihar</option>
            <option value="chhattisgarh">Chhattisgarh</option>
            <option value="goa">Goa</option>
            <option value="gujarat">Gujarat</option>
            <option value="haryana">Haryana</option>
            <option value="himachal-pradesh">Himachal Pradesh</option>
            <option value="jharkhand">Jharkhand</option>
            <option value="karnataka">Karnataka</option>
            <option value="kerala">Kerala</option>
            <option value="madhya-pradesh">Madhya Pradesh</option>
            <option value="maharashtra">Maharashtra</option>
            <option value="manipur">Manipur</option>
            <option value="meghalaya">Meghalaya</option>
            <option value="mizoram">Mizoram</option>
            <option value="nagaland">Nagaland</option>
            <option value="odisha">Odisha</option>
            <option value="punjab">Punjab</option>
            <option value="rajasthan">Rajasthan</option>
            <option value="sikkim">Sikkim</option>
            <option value="tamil-nadu">Tamil Nadu</option>
            <option value="telangana">Telangana</option>
            <option value="tripura">Tripura</option>
            <option value="uttar-pradesh">Uttar Pradesh</option>
            <option value="uttarakhand">Uttarakhand</option>
            <option value="west-bengal">West Bengal</option>
        </frm:select><br>
</div>
</div>
        <div class="form-row">
            <div style="flex: 1;">
        <label>City:</label>
        <frm:input type="text" path="city" required />
    </div>
    <div style="flex: 1;">

        <label> PinCode:</label>
        <frm:input type="number" path="pincode" required /><br/>
</div>
</div>
        <div class="form-row">
            <div style="flex: 1;">
        <label>Mobile No:</label>
        <frm:input type="number" path="mobile" required />
    </div>
    <div style="flex: 1;">

        <label>Email ID:</label>
        <frm:input type="email" path="email" required /><br/>
</div>
</div>
        <div class="form-row">
            <div style="flex: 1;">
        <label>PAN Card No:</label>
        <frm:input type="text" path="pancard" required />
    </div>
    <div style="flex: 1;">
        <label>Upload PAN Card Image:</label>
        <frm:input type="file" path="pan"/><br/><br/>
</div>
</div>
        <button type="submit">Submit</button>
        <button type="reset">Clear</button>
    
    </frm:form>
    </div>
</body>
</html>
