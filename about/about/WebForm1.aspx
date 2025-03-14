<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="about.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            background-color: #eef2f5;
        }
        .content {
            margin-left: 270px;
            padding: 20px;
            width: 100%;
        }

        .content h1 {
            font-size: 32px;
            color: #2c3e50;
        }

        .content p {
            font-size: 18px;
            color: #555;
            line-height: 1.8;
        }

        .content .features {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 20px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="content">
            <h1>About the Online Examination System</h1>
            <p>
                The Online Examination System (OES) is designed to revolutionize the way institutions conduct exams, 
                providing a secure, scalable, and user-friendly platform. With OES, educators and administrators can:
            </p>
            <ul>
                <li>Conduct online exams with ease and precision</li>
                <li>Generate instant results for faster evaluation</li>
                <li>Manage question banks for multiple subjects</li>
                <li>Monitor exams in real-time with proctoring tools</li>
            </ul>

            <div class="features">
                <div class="card">
                    <img src="images/security.jpg" alt="Secure Exams" />
                    <h3>Advanced Security</h3>
                    <p>Ensure secure exam sessions with encrypted data and authentication systems.</p>
                </div>
                <div class="card">
                    <img src="images/automation.jpg" alt="Automation" />
                    <h3>Automated Grading</h3>
                    <p>Save time with automated grading and instant result generation.</p>
                </div>
                <div class="card">
                    <img src="images/analytics.jpg" alt="Analytics" />
                    <h3>Detailed Analytics</h3>
                    <p>Get insights into performance with detailed exam analytics and reporting.</p>
                </div>
            </div> 
    </form>
</body>
</html>
