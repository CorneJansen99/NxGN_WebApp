<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPage.aspx.cs" Inherits="NxGN_WebApp.EditPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <link rel ="stylesheet" type=" text/css" href="MyStyleSheet.css" />

<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 30%;
            position: absolute;
            left: 40%;
            top: 40%;
        }
    </style>
</head>
<body style="height: 243px">
    <form id="form1" runat="server">
        <div align ="center"; text-align="center">

            <table align ="center"; text-align="center" height:50% position: absolute;" class="auto-style2"">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Movie Name:" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="NameTb" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Movie Category:" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="CategoryTb" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Movie Rating(1-5):" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="RatingTb" runat="server"></asp:TextBox>

                    </td> 
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                 <tr>
                    <td>
            <asp:Button ID="SaveBtn" runat="server" Text="Save" cssClass="mybutton" OnClick="SaveBtn_Click" ToolTip="Click to save new movie" />
                     </td>
                    <td>
            <asp:Button ID="CancelBtn" runat="server" Text="Cancel" cssClass="mybutton" OnClick="CancelBtn_Click" ToolTip="Click to cancel and return to homepage" />
                     </td> 

                </tr>
            </table>
        </div>
    </form>
</body>
</html>
