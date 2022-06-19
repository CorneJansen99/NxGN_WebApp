<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RatingsPage.aspx.cs" Inherits="NxGN_WebApp.RatingsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-image: url('Ratingimg.jpg');
            background: linear-gradient(rgba(0, 0, 0, .5), rgba(0, 0, 0, .5)), url('Ratingimg.jpg');
            background-size: 100%;
        }
        .auto-style2 {
            width: 30%;
            position: absolute;
            left: 40%;
            top: 40%;
        }
    </style>
</head>

<body>
    
    <form id="form1" runat="server">
        <div align ="center"; text-align="center">

            <table align ="center"; text-align="center" height:50% position: absolute;" class="auto-style2"">
                <tr>
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>

