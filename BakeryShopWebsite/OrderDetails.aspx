<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="BakeryShopWebsite.OrderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="navbar" align="center" Height="auto">
    <div align="right">
        <asp:LinkButton ID="AllOrder" runat="server" onclick="AllOrder_Click">Show All Order</asp:LinkButton>
        &nbsp;
    </div>
    <div>
        <b>Select Date:</b>
        <asp:TextBox ID="TextBox1" runat="server" Font-Bold="true" Width="122px"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
            ImageUrl="~/Images/icon-calendar3.png" onclick="ImageButton1_Click"/>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Year:" Font-Bold="true"></asp:Label>&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        &nbsp;
        <asp:Label ID="Label2" runat="server" Text="Month:" Font-Bold="true"></asp:Label>&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>
        &nbsp;
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
            BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
            Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" 
            onselectionchanged="Calendar1_SelectionChanged" Width="330px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                Height="8pt" />
            <DayStyle BackColor="#CCCCCC" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                Font-Size="12pt" ForeColor="White" Height="12pt" />
            <TodayDayStyle BackColor="#999999" ForeColor="White" />
        </asp:Calendar>
        <asp:Button ID="Button1" runat="server" Text="Click" CssClass="button" 
            Font-Bold="true" Height="39px" Width="72px" onclick="Button1_Click"/>
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            onrowdatabound="GridView1_RowDataBound">
            <Columns>
                <asp:TemplateField HeaderText="Order Status">
                    <ItemTemplate>
                        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
                            GroupName="Ostatus" Text="Pending" />
                        &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="Ostatus" 
                            Text="Completed" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Update Status" CssClass="button" 
            Font-Bold="true" Height="39px" Width="136px" onclick="Button2_Click"/>
        <br /><br />
    </div>
</div>
</asp:Content>
