<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexUI.aspx.cs" Inherits="DiagnosticCenterBillManagementSystemWebApp.UI.IndexUI" %>

<!DOCTYPE html>

<html lang="en-US">
<head runat="server">
    <meta charset="UTF-8"/>
    <title>Home</title>
    <link href="../Scripts/reset.css" rel="stylesheet" />
    <link href="../Scripts/style.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Sansita" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <header>
                <div class="logo"></div>
                <div class="banner">
                    <h1>Diagnostic Center Bill Management System</h1>
                </div>
                <nav>
                    <ul>
                        <li><a href="IndexUI.aspx">Home</a></li>
                        <li><a>Setup</a>
                            <ul>
                                <li><a href="TestTypeSetupUI.aspx">Test Type</a></li>
                                <li><a href="TestSetupUI.aspx">Test</a></li>
                            </ul>
                        </li>
                        <li><a>Test Request</a>
                            <ul>
                                <li><a href="TestRequestEntryUI.aspx">Entry</a></li>
                                <li><a href="PaymentUI.aspx">Payment</a></li>
                            </ul>
                        </li>
                        <li><a>Report</a>
                            <ul>
                                <li><a href="TestWiseReportUI.aspx">Test Wise</a></li>
                                <li><a href="TypeWiseReportUI.aspx">Type Wise</a></li>
                                <li><a href="UnpaidBillUI.aspx">Unpaid Bill</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </header>
            <div class="main">
                <img src="../images/mri_2.jpg" />
                <h1>Group Name: Anonymous</h1>
            <table class="teamTable">
	            <tr>
		            <td><h3>Md. Tohedul Hassan</h3><br/>SEIP ID: 141066<br/>Email: <a href="mailto:tohid2295@gmail.com">tohid2295@gmail.com</a><br/>Mobile No: +8801846337400</td>
		            <td><h3>Rakibul Hassan</h3><br/><br/>SEIP ID: 141063<br/>Email: <a href="mailto:rakib@gmail.com">rakib@gmail.com</a><br>Mobile No: +8801764144894</td>
		            <td><h3>Zannat binte Ria</h3><br/><br/>SEIP ID: 131084<br/>Email: <a href="mailto:ria@gmail.com">ria@gmail.com</a><br/>Mobile No: +8801323423425</td>
	            </tr>
            </table>
        </div>
        <footer><br />&copy; Anonymous, 2017.</footer>
        </div>
    </form>
</body>
</html>
