<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="NxGN_WebApp.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel ="stylesheet" type=" text/css" href="MyStyleSheet.css" />

<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-image: url('filmbck.jpg');
            /*background: linear-gradient(rgba(0, 0, 0, .5), rgba(0, 0, 0, .5)), url('BckgHome.jpg');*/
            background-size: 100%;
        }
        .auto-style2 {
            width: 9%;
            position: absolute;
            left: 37%;
            top: 40%;
            height: 50px;
        }
        .auto-style3 {
            height: 430px;
        }
    </style>
</head>

<body>
    
    <form id="form1" runat="server">
        <div align ="center"; text-align="center" class="auto-style3">



            <table align ="center"; text-align="center" height:50% position: absolute;" class="auto-style2"">
                <tr>
                    <td align="right">
                        &nbsp;</td>
                    <td align="center">

            <asp:Button ID="AddBtn" align="left" runat="server" Text="Add" cssClass="mybutton" OnClick="AddBtn_Click" ToolTip="Click to add new movie" />

                        <asp:Button ID="DisplayBtn" align="center" cssClass="mybutton" runat="server" Text="Display All" OnClick="DisplayBtn_Click" />

            <asp:Button ID="EditBtn" align="right" runat="server" cssClass="mybutton" OnClick="EditBtn_Click" Text="Edit" ToolTip="Click to edit a movie" />


                    </td>
                    <td align="center">

                        &nbsp;</td>

                </tr>

                <tr>
                    <td align="center">
                        <asp:Button ID="SearchBtn" cssClass="mybutton" runat="server" Text="Search" OnClick="SearchBtn_Click" ToolTip="Enter Category to filter movies" />

                        <asp:TextBox ID="searchTb" runat="server" Width="77px"></asp:TextBox>
                    </td>
                    <td>
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>


                    </td>
                    <td align="center">

            <asp:Button ID="DeleteBtn" cssClass="mybutton" runat="server" Text="Delete" OnClick="DeleteBtn_Click" ToolTip="Enter Movie Name to delete" />

                        <asp:TextBox ID="DeleteTb" runat="server" Width="77px"></asp:TextBox>
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
