<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Product.aspx.cs" Inherits="BakeryShopWebsite.Add_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="navbar" style="border-width:3px; border-color:#333333; height:auto">
    <table style="width:700px; height:390px; background-color: #5f98f3;" align="center">
        <tr>
            <td colspan="2" align="center" width="50%">
                <h1>Adding Products</h1>
                <hr />
            </td>
        </tr>
        <tr>
            <td align="center" width="50%">
                <h3>Category:</h3>
            </td>
            <td width="50%">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="CategoryName" 
                    DataValueField="CategoryName">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Category Is Mandatory" ControlToValidate="DropDownList1" 
                    Display="Dynamic" InitialValue="Select" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" width="50%">
                <h3>Product Name:</h3>
            </td>
            <td width="50%">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Product Name is Mandatory" Display="Dynamic" 
                    ControlToValidate="txtName" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" width="50%">
                <h3>Product Desc:</h3>
            </td>
            <td width="50%">
                <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Product Desc is Mandatory" Display="Dynamic" 
                    ControlToValidate="txtDesc" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" width="50%">
                <h3>Product Image:</h3>
            </td>
            <td width="50%">
                <asp:FileUpload ID="imageUpload" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Product Image is Mandatory" Display="Dynamic" 
                    ControlToValidate="imageUpload" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" width="50%">
                <h3>Product Price(Rs):</h3>
            </td>
            <td width="50%">
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Product Price is Mandatory" Display="Dynamic" 
                    ControlToValidate="txtPrice" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Price Is Invalid" ControlToValidate="txtPrice" Display="Dynamic" ForeColor="Red" ValidationExpression="[0-9]*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="center" width="50%">
                <h3>Product Quantity:</h3>
            </td>
            <td width="50%">
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Product Quantity is Mandatory" Display="Dynamic" 
                    ControlToValidate="txtQuantity" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Quantity Is Invalid" ControlToValidate="txtQuantity" Display="Dynamic" ForeColor="Red" ValidationExpression="[0-9]*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" width="50%">
                <asp:Button ID="btnSubmit" runat="server" Text="Add" Font-Bold="true" 
                    ForeColor="Black" Height="36px" Width="88px" onclick="btnSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" width="50%">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Fix the following Error" />
            </td>
        </tr>
    </table>
</div>

<div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ShopBakeryConnectionString %>" 
        SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
</div>
</asp:Content>
