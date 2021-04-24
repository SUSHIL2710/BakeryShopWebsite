<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="BakeryShopWebsite.PlaceOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" style="margin-top:50px; width:531px; height:563px; background-color:DarkCyan">
            <tr>
                <td colspan="2" align="center" style="vertical-align:top">
                    <asp:Label ID="Label1" runat="server" Text="Card Details" Font-Bold="True" 
                        Font-Size="XX-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" style="vertical-align:top">
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderWidth="2px" 
                        Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px" Placeholder="First Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="First Name Is Empty" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="First Name Must Be In Character" ControlToValidate="TextBox1" 
                        ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                </td>
                <td align="center" style="vertical-align:top">
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderWidth="2px" 
                        Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px" Placeholder="Last Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Last Name Is Empty" ControlToValidate="TextBox2" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="Last Name Must Be In Character" ControlToValidate="TextBox2" 
                        ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderWidth="2px" Width="438px" ImageUrl="~/Images/card.png" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Card Number"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" style="vertical-align:top">
                    <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" BorderWidth="2px" 
                        Font-Bold="True" Font-Size="Medium" Height="44px" Width="442px" Placeholder="Card Number(16 digits)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Card Number Is Empty" ControlToValidate="TextBox3" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ErrorMessage="Card Number Must Be In Character" ControlToValidate="TextBox3" 
                        ForeColor="Red" ValidationExpression="[0-9]{16}">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Expiry Date"></asp:Label>
                </td>
                <td align="center">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="CVV"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" style="vertical-align:top">
                    <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black" BorderWidth="2px" 
                        Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px" Placeholder="MM/YY (eg:232020)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Expiry Date Is Empty" ControlToValidate="TextBox4" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td align="center" style="vertical-align:top">
                    <asp:TextBox ID="TextBox5" runat="server" BorderColor="Black" BorderWidth="2px" 
                        Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px" Placeholder="CVV (03 digits)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="CVV Is Empty" ControlToValidate="TextBox5" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ErrorMessage="CVV Number Must Be In Character" ControlToValidate="TextBox5" 
                        ForeColor="Red" ValidationExpression="[0-9]{3}">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="center" style="vertical-align:top" colspan="2">
                    <asp:TextBox ID="TextBox6" runat="server" BorderColor="Black" BorderWidth="2px" 
                        Font-Bold="True" Font-Size="X-Large" Height="50px" Width="442px" Placeholder="Billing Address" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="Billing Address Is Empty" ControlToValidate="TextBox6" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="Black" 
                        BorderColor="White" BorderWidth="2px" Font-Bold="True" Font-Size="Large" 
                        ForeColor="White" Height="44px" Width="188px" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" 
                        HeaderText="Fix The Following Error." ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                        NavigateUrl="~/AddToCart.aspx">Previous Page</asp:HyperLink>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
                        NavigateUrl="~/Default.aspx">Go To Home</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
