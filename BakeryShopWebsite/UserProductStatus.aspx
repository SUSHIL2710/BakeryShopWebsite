<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="UserProductStatus.aspx.cs" Inherits="BakeryShopWebsite.UserProductStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link rel="Stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
    .progress
    {
        /*margin: 300px auto;*/    
    }
    ul
    {
        text-align: center;    
    }
    ul li
    {
        display: inline-block;
        width: 200px;
        position: relative;    
    }
    ul li .fa
    {
       background: #ccc;
       width: 16px;
       height: 16px;
       color: White;
       border-radius: 50%;
       padding: 5px;     
    }
    ul li .fa::after
    {
        content: '';
        background: #ccc;
        height: 5px;
        width: 205px;
        display: block;
        position: absolute;
        left: 0;
        top: 10px;
        z-index: -1;    
    }
    ul li:nth-child(1) .fa
    {
        background: #148e14;    
    }
    ul li:nth-child(1) .fa::after
    {
        background: #148e14;    
    }
    ul li:first-child .fa::after
    {
        width: 105px;
        left: 100px;    
    }
    ul li:last-child .fa::after
    {
        width: 105px;    
    }
    .delivery
    {
        background-image: url(/Images/DELIVERY-BOY-2.png);
        background-position: right;
        background-repeat: no-repeat;    
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div align="center">
    <marquee direction="left" scrollamount='<% val %>' runat="server">
        <center>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/DELIVERY-BOY-2.png" />
        </center>
    </marquee>
    <hr style="color:Red; border:solid"/>
    &nbsp;&nbsp;
    <h1 style="color:#ff0000">Recent Delivery Status</h1>
    <b>Order Id :</b> <asp:Label ID="lblOrderID" runat="server" Text="Label" ForeColor="#9933FF" Font-Bold="true"></asp:Label>
</div>
<br />
<div class="progress">
    <ul>
        <li>
            <i class="fa fa-check" aria-hidden="true"></i>
            <p><b>Dispatched</b></p>
        </li>
        <li>
            <i class="fa fa-check" aria-hidden="true"></i>
            <p><b>Delivered</b></p>
        </li>
    </ul>
</div>
<br /><br />
<div align="center">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" BorderColor="White" Font-Bold="True" Font-Size="Large" ForeColor="White" NavigateUrl="~/Default.aspx" BackColor="#009900">Back To Home</asp:HyperLink>
</div>
</asp:Content>
