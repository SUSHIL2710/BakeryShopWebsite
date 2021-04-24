<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="CustomizeCake.aspx.cs" Inherits="BakeryShopWebsite.CustomizeCake" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table align="Center" style="height: 453px" bgcolor="#00FF99">
    <tr>
        <td colspan="2" align="center"><h2>Order Your Customized Cake</h2><hr /></td>
    </tr>
    <tr>
        <td style="width:50%" align="center">
            <b>Name :</b>
        </td>
        <td style="width:50%" align="center">
            <asp:TextBox ID="txtName" runat="server" Height="32px" Width="165px"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Is Empty" 
                ControlToValidate="txtName" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width:50%" align="center">
            <b>Address :</b>
        </td>
        <td style="width:50%" align="center">
            <asp:TextBox ID="txtAddr" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Address Is Mandatory" ControlToValidate="txtAddr" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width:50%" align="center">
            <b>Contact Number :</b>
        </td>
        <td style="width:50%" align="center">
            <asp:TextBox ID="txtNumber" runat="server" Height="29px" TextMode="Number" 
                Width="171px"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Contact Number is Mandatory" ControlToValidate="txtNumber" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width:50%" align="center">
            <b>Cake Details :</b>
        </td>
        <td style="width:50%" align="center">
            <asp:TextBox ID="txtDetails" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="Cake Details Are Mandatory" ControlToValidate="txtDetails" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:ImageButton ID="ImageButton5" runat="server" Height="32px" 
                ImageUrl="~/Images/Submit.png" onclick="ImageButton5_Click" Width="121px" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
    </tr>
</table>
</asp:Content>
