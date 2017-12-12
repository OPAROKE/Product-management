<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="OmrokEmployeeDTable.aspx.cs" Inherits="OmrokEmployeeDTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="DataManager">
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/OmrokEmployeeManagementSystem.xml"></asp:XmlDataSource>
    <div>
    <div>
        <fieldset runat="server">
            <legend style="font-size:larger; color:blue; font-weight:bold;">Omrok Stuff Information:</legend>
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="348px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="EmployeePhoto" HeaderText="EmployeePhoto" SortExpression="EmployeePhoto" />
                        <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeId" SortExpression="EmployeeId" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                        <asp:BoundField DataField="Midname" HeaderText="Midname" SortExpression="Midname" />
                        <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                        <asp:BoundField DataField="Birthdate" HeaderText="Birthdate" SortExpression="Birthdate" />
                        <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                        <asp:BoundField DataField="Hiringdate" HeaderText="Hiringdate" SortExpression="Hiringdate" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Addres" HeaderText="Addres" SortExpression="Addres" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                        <asp:BoundField DataField="Telephone" HeaderText="Telephone" SortExpression="Telephone" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                        <asp:BoundField DataField="DepartmentId" HeaderText="DepartmentId" SortExpression="DepartmentId" />
                        <asp:BoundField DataField="DeparmentName" HeaderText="DeparmentName" SortExpression="DeparmentName" />
                        <asp:BoundField DataField="DepartmentSection" HeaderText="DepartmentSection" SortExpression="DepartmentSection" />
                        <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>
        </fieldset>
        </div>
     </div>
</asp:Content>


