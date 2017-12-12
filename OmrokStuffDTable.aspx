<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OmrokStuffDTable.aspx.cs" Inherits="OmrokStuffDTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Omrok Stuff Information</title>
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
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/OmrokStuffInformation.xml"></asp:XmlDataSource>
    <div>
        <asp:GridView ID="OmrokStuffDataTable" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1">
            <Columns>
                <asp:BoundField DataField="StuffId" HeaderText="StuffId" SortExpression="StuffId" />
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Addres" HeaderText="Addres" SortExpression="Addres" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Telephone" HeaderText="Telephone" SortExpression="Telephone" />
                <asp:BoundField DataField="Mobilephone" HeaderText="Mobilephone" SortExpression="Mobilephone" />
                <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                <asp:BoundField DataField="SecondEmail" HeaderText="SecondEmail" SortExpression="SecondEmail" />
                <asp:BoundField DataField="PreviousOrganization" HeaderText="PreviousOrganization" SortExpression="PreviousOrganization" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
