<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BakeryShopWebsite.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" 
            style="height: 448px; width: 650px;" 
            bgcolor="#6699FF">
            <tr>
                <td colspan="2" align="center">
                    <h2>Login Page</h2></td>
                
            </tr>
            <tr>
                <td style="width:50%" align="center">
                    <b>Email:</b></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="41px" Width="296px" 
                        TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Email Is Mandatory" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%" align="center">
                    <b>Password:</b></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="46px" Width="301px" 
                        TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Password Is Mandatory" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                        Height="43px" Text="Login" Width="113px" onclick="Button1_Click" />
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
