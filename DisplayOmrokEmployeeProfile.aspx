<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="DisplayOmrokEmployeeProfile.aspx.cs" Inherits="DisplayOmrokEmployeeProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
            border:0px;
        }
        .tdwidth
        {
            width:200px;
        }
        .omrokEmpDisplayClass{
            color:darkgreen;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="DataManager" Runat="Server">
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/OmrokEmployeeManagementSystem.xml"></asp:XmlDataSource>
    <table class="auto-style1">
        <tr>
            <td style="height:1px; background-color:maroon;"><hr /></td>
        </tr>
        <tr>
            <td>
                <asp:FormView ID="FormView1" runat="server" BackColor="Transparent" Font-Bold="true" AllowPaging="True" DataSourceID="XmlDataSource1" Width="100%">
                    <EditItemTemplate>
                        <asp:Image ID="omrokEmpProfile" runat="server" ImageUrl='<%# Bind("EmployeePhoto") %>' Width="500" Height="500" /><br />
                        EmployeePhoto:
                        <asp:TextBox ID="EmployeePhotoTextBox" runat="server" Text='<%# Bind("EmployeePhoto") %>' />
                        <br />
                        EmployeeId:
                        <asp:TextBox ID="EmployeeIdTextBox" runat="server" Text='<%# Bind("EmployeeId") %>' />
                        <br />
                        Firstname:
                        <asp:TextBox ID="FirstnameTextBox" runat="server" Text='<%# Bind("Firstname") %>' />
                        <br />
                        Midname:
                        <asp:TextBox ID="MidnameTextBox" runat="server" Text='<%# Bind("Midname") %>' />
                        <br />
                        Lastname:
                        <asp:TextBox ID="LastnameTextBox" runat="server" Text='<%# Bind("Lastname") %>' />
                        <br />
                        Birthdate:
                        <asp:TextBox ID="BirthdateTextBox" runat="server" Text='<%# Bind("Birthdate") %>' />
                        <br />
                        Sex:
                        <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                        <br />
                        Hiringdate:
                        <asp:TextBox ID="HiringdateTextBox" runat="server" Text='<%# Bind("Hiringdate") %>' />
                        <br />
                        Address:
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        <br />
                        Addres:
                        <asp:TextBox ID="AddresTextBox" runat="server" Text='<%# Bind("Addres") %>' />
                        <br />
                        Email:
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                        <br />
                        City:
                        <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                        <br />
                        ZipCode:
                        <asp:TextBox ID="ZipCodeTextBox" runat="server" Text='<%# Bind("ZipCode") %>' />
                        <br />
                        State:
                        <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                        <br />
                        Country:
                        <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                        <br />
                        Telephone:
                        <asp:TextBox ID="TelephoneTextBox" runat="server" Text='<%# Bind("Telephone") %>' />
                        <br />
                        Mobile:
                        <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                        <br />
                        DepartmentId:
                        <asp:TextBox ID="DepartmentIdTextBox" runat="server" Text='<%# Bind("DepartmentId") %>' />
                        <br />
                        DeparmentName:
                        <asp:TextBox ID="DeparmentNameTextBox" runat="server" Text='<%# Bind("DeparmentName") %>' />
                        <br />
                        DepartmentSection:
                        <asp:TextBox ID="DepartmentSectionTextBox" runat="server" Text='<%# Bind("DepartmentSection") %>' />
                        <br />
                        Fax:
                        <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                    <asp:Image ID="omrokEmpProfile" runat="server" ImageUrl='<%# Bind("EmployeePhoto") %>' Width="500" Height="500" />
                    <br />
                        EmployeePhoto:
                        <asp:TextBox ID="EmployeePhotoTextBox" runat="server" Text='<%# Bind("EmployeePhoto") %>' />
                        <br />
                        EmployeeId:
                        <asp:TextBox ID="EmployeeIdTextBox" runat="server" Text='<%# Bind("EmployeeId") %>' />
                        <br />
                        Firstname:
                        <asp:TextBox ID="FirstnameTextBox" runat="server" Text='<%# Bind("Firstname") %>' />
                        <br />
                        Midname:
                        <asp:TextBox ID="MidnameTextBox" runat="server" Text='<%# Bind("Midname") %>' />
                        <br />
                        Lastname:
                        <asp:TextBox ID="LastnameTextBox" runat="server" Text='<%# Bind("Lastname") %>' />
                        <br />
                        Birthdate:
                        <asp:TextBox ID="BirthdateTextBox" runat="server" Text='<%# Bind("Birthdate") %>' />
                        <br />
                        Sex:
                        <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                        <br />
                        Hiringdate:
                        <asp:TextBox ID="HiringdateTextBox" runat="server" Text='<%# Bind("Hiringdate") %>' />
                        <br />
                        Address:
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        <br />
                        Addres:
                        <asp:TextBox ID="AddresTextBox" runat="server" Text='<%# Bind("Addres") %>' />
                        <br />
                        Email:
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                        <br />
                        City:
                        <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                        <br />
                        ZipCode:
                        <asp:TextBox ID="ZipCodeTextBox" runat="server" Text='<%# Bind("ZipCode") %>' />
                        <br />
                        State:
                        <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                        <br />
                        Country:
                        <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                        <br />
                        Telephone:
                        <asp:TextBox ID="TelephoneTextBox" runat="server" Text='<%# Bind("Telephone") %>' />
                        <br />
                        Mobile:
                        <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                        <br />
                        DepartmentId:
                        <asp:TextBox ID="DepartmentIdTextBox" runat="server" Text='<%# Bind("DepartmentId") %>' />
                        <br />
                        DeparmentName:
                        <asp:TextBox ID="DeparmentNameTextBox" runat="server" Text='<%# Bind("DeparmentName") %>' />
                        <br />
                        DepartmentSection:
                        <asp:TextBox ID="DepartmentSectionTextBox" runat="server" Text='<%# Bind("DepartmentSection") %>' />
                        <br />
                        Fax:
                        <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table border="0">
                        <tr>
                        <td></td>
                        <td rowspan="23" style="width: 20px;"></td>
                            <td></td>
                        <td></td>
                        <td rowspan="23" style="background-color:transparent; width:1px;"></td>
                        <td rowspan="23" style="width:300px;"></td>
                        </tr>
                            <tr>
                                <td rowspan="22" VALIGN="top">
                                    <asp:Image ID="omrokEmpProfile" runat="server" ImageUrl='<%# Bind("EmployeePhoto") %>' Width="250" Height="250" /></td>
                            </tr>
                            <tr>
                                <td class="tdwidth">EmployeePhoto:</td>
                                <td>
                                    <asp:Label ID="EmployeePhotoLabel" runat="server" Text='<%# Bind("EmployeePhoto") %>' CssClass="omrokEmpDisplayClass" /></td>
                            </tr>
                            <tr>
                                <td>EmployeeId:</td>
                                <td>
                                    <asp:Label ID="EmployeeIdLabel" runat="server" Text='<%# Bind("EmployeeId") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>Firstname:</td>
                                <td>
                                    <asp:Label ID="FirstnameLabel" runat="server" Text='<%# Bind("Firstname") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>Midname:</td>
                                <td>
                                    <asp:Label ID="MidnameLabel" runat="server" Text='<%# Bind("Midname") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>Lastname:</td>
                                <td>
                                    <asp:Label ID="LastnameLabel" runat="server" Text='<%# Bind("Lastname") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>Birthdate:</td>
                                <td>
                                    <asp:Label ID="BirthdateLabel" runat="server" Text='<%# Bind("Birthdate") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>Sex:</td>
                                <td>
                                    <asp:Label ID="SexLabel" runat="server" Text='<%# Bind("Sex") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>Hiringdate:</td>
                                <td>
                                    <asp:Label ID="HiringdateLabel" runat="server" Text='<%# Bind("Hiringdate") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>Address:</td>
                                <td>
                                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>Addres:</td>
                                <td>
                                    <asp:Label ID="AddresLabel" runat="server" Text='<%# Bind("Addres") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>Email:</td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>City:</td>
                                <td>
                                    <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>ZipCode:</td>
                                <td>
                                    <asp:Label ID="ZipCodeLabel" runat="server" Text='<%# Bind("ZipCode") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>State:</td>
                                <td>
                                    <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>Country:</td>
                                <td>
                                    <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>Telephone:</td>
                                <td>
                                    <asp:Label ID="TelephoneLabel" runat="server" Text='<%# Bind("Telephone") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>Mobile:</td>
                                <td>
                                    <asp:Label ID="MobileLabel" runat="server" Text='<%# Bind("Mobile") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>DepartmentId:</td>
                                <td>
                                    <asp:Label ID="DepartmentIdLabel" runat="server" Text='<%# Bind("DepartmentId") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>DeparmentName:</td>
                                <td>
                                    <asp:Label ID="DeparmentNameLabel" runat="server" Text='<%# Bind("DeparmentName") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>DepartmentSection:</td>
                                <td>
                                    <asp:Label ID="DepartmentSectionLabel" runat="server" Text='<%# Bind("DepartmentSection") %>' CssClass="omrokEmpDisplayClass"  /></td>
                            </tr>
                            <tr>
                                <td>Fax:</td>
                                <td>
                                    <asp:Label ID="FaxLabel" runat="server" Text='<%# Bind("Fax") %>' CssClass="omrokEmpDisplayClass"  />
                        </table>
                    </ItemTemplate>
                </asp:FormView>
            </td>
        </tr>
        <tr>
            <td><hr /></td>
        </tr>
    </table>
</asp:Content>

