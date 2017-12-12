<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OmrokProductManagementDTable.aspx.cs" Inherits="OmrokProductManagementDTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Omrok Product Information</title>
                <link rel="icon" href="/omroklogo.ico" type="image/x-icon" />
    <link rel="icon" href="/omroklogo.ico" type="image/ico" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <header style="background-image:url(Assets/omrokProductHeader.jpg); background-repeat:no-repeat; height:100px;"></header>
            <div style="background-color: black; color: white; font-weight: bold;">
                <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="White" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem Text="Home" Value="home" NavigateUrl="~/omrokLogin.html"></asp:MenuItem>
                        <asp:MenuItem Text="Employee Information" Value="imployeeinformation" NavigateUrl="~/EmployeeManagement.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Product Data Entry" Value="productdataentry" NavigateUrl="~/ProductMaster.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="New products" Value="newproduct"></asp:MenuItem>
                        <asp:MenuItem Text="Used products" Value="usedproducts"></asp:MenuItem>
                        <asp:MenuItem Text="Contact Us" Value="contactus"></asp:MenuItem>
                        <asp:MenuItem Text="About Us" Value="aboutus"></asp:MenuItem>
                        <asp:MenuItem Text="Sign In" Value="SignIn"></asp:MenuItem>
                        <asp:MenuItem Text="Admin Registration" Value="AdminRegistration" NavigateUrl="~/OmrokAdminRegistration.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Omrok Dynamics" Value="OmrokDynamics"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </div>
        </div>

        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/OmrokProductmanagementSystem.xml"></asp:XmlDataSource>
    <div>
        <asp:GridView ID="omrokProductDataTable" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1">
            <Columns>
                <asp:BoundField DataField="ProductImage" HeaderText="ProductImage" SortExpression="ProductImage" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                <asp:BoundField DataField="Productname" HeaderText="Productname" SortExpression="Productname" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                <asp:BoundField DataField="CountryOfOrigin" HeaderText="CountryOfOrigin" SortExpression="CountryOfOrigin" />
                <asp:BoundField DataField="ManufactureDat" HeaderText="ManufactureDat" SortExpression="ManufactureDat" />
                <asp:BoundField DataField="ManufactureCode" HeaderText="ManufactureCode" SortExpression="ManufactureCode" />
                <asp:BoundField DataField="ExpiryDate" HeaderText="ExpiryDate" SortExpression="ExpiryDate" />
                <asp:BoundField DataField="Supplier" HeaderText="Supplier" SortExpression="Supplier" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="WholesalePrice" HeaderText="WholesalePrice" SortExpression="WholesalePrice" />
                <asp:BoundField DataField="RetailPrice" HeaderText="RetailPrice" SortExpression="RetailPrice" />
                <asp:BoundField DataField="ShippingCost" HeaderText="ShippingCost" SortExpression="ShippingCost" />
                <asp:BoundField DataField="VAT" HeaderText="VAT" SortExpression="VAT" />
                <asp:BoundField DataField="ProductDiscont" HeaderText="ProductDiscont" SortExpression="ProductDiscont" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
