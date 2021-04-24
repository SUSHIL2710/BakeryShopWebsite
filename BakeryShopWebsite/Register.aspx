<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BakeryShopWebsite.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bakery Shop | Registration Form</title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" 
            style="width: 700px; height: 715px;" 
            bgcolor="#CCFF66">
            <tr>
                <td colspan="2" align="center">
                    <h2>
                        Registration Page</h2>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <b>First Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="42px" Width="271px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Only Characters are required" 
                        ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="First Name Is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <b>Last Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="42px" Width="271px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Last Name Is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Only Characters are required" 
                        ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <b>Email ID:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="42px" Width="271px" 
                        TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Email Is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <b>Gender:</b>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="270px">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="Select Gender" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <b>Address:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="42px" Width="271px" 
                        TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Address Is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <b>Phone Number:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="42px" Width="271px" 
                        TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Phone Number Is Empty" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <b>Password:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Height="42px" Width="271px" 
                        TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Password Is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    <b>Confirm Password:</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Height="42px" Width="271px" 
                        TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Confirm Password Is Empty" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox6" ControlToValidate="TextBox7" 
                        ErrorMessage="Password Doesn't Match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Register" Font-Bold="True" Font-Size="Large"
                        Height="47px" Width="187px" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
