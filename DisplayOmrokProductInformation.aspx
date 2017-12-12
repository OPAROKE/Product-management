<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="DisplayOmrokProductInformation.aspx.cs" Inherits="DisplayOmrokProductInformation" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width: 1299px;
        }
        .auto-style4
        {            
            text-align:center;
            width: 649px;
        }
        .tdwidth
        {
            width:200px;
        }
        .btnStyle
        {
            background-color:transparent;
            color:maroon;
            border:solid;
            font-weight:bold;
            font-size:x-large;
            border-radius:10px;
        }
        .classProdLabel
        {
            font-weight:100;
            font-size:medium;
            color:maroon;
            font-family:Courier New, Courier, monospace;
        }
        .auto-style5 {
            text-align: center;
            width: 648px;
        }
        .auto-style6 {
            text-align: center;
            width: 733px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="DataManager" runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT * FROM [OmrokProductData_tbl]"></asp:SqlDataSource>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/OmrokProductmanagementSystem.xml"></asp:XmlDataSource>
    <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/App_Data/OmrokProductmanagementSystem.xml"></asp:XmlDataSource>
    <div>
        <div>
            <table class="auto-style1" border="0">
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td style="vertical-align: top;" class="auto-style5">
                        <div>
                            <asp:FormView ID="FormView1" runat="server" DataSourceID="XmlDataSource1" BorderStyle="None" AllowPaging="True" Width="771px" Font-Bold="True" HeaderText="Product details">
                                <EditItemTemplate>
                                    <asp:Image ID="omrokImage" runat="server" ImageUrl='<%# Bind("ProductImage") %>' Width="100" Height="100" />
                                    <br />
                                    ProductImage:
                        <asp:TextBox ID="ProductImageTextBox" runat="server" Text='<%# Bind("ProductImage") %>' />
                                    <br />
                                    ProductID:
                        <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                                    <br />
                                    Productname:
                        <asp:TextBox ID="ProductnameTextBox" runat="server" Text='<%# Bind("Productname") %>' />
                                    <br />
                                    Category:
                        <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
                                    <br />
                                    Brand:
                        <asp:TextBox ID="BrandTextBox" runat="server" Text='<%# Bind("Brand") %>' />
                                    <br />
                                    CountryOfOrigin:
                        <asp:TextBox ID="CountryOfOriginTextBox" runat="server" Text='<%# Bind("CountryOfOrigin") %>' />
                                    <br />
                                    ManufactureDat:
                        <asp:TextBox ID="ManufactureDatTextBox" runat="server" Text='<%# Bind("ManufactureDat") %>' />
                                    <br />
                                    ManufactureCode:
                        <asp:TextBox ID="ManufactureCodeTextBox" runat="server" Text='<%# Bind("ManufactureCode") %>' />
                                    <br />
                                    ExpiryDate:
                        <asp:TextBox ID="ExpiryDateTextBox" runat="server" Text='<%# Bind("ExpiryDate") %>' />
                                    <br />
                                    Supplier:
                        <asp:TextBox ID="SupplierTextBox" runat="server" Text='<%# Bind("Supplier") %>' />
                                    <br />
                                    Author:
                        <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                                    <br />
                                    WholesalePrice:
                        <asp:TextBox ID="WholesalePriceTextBox" runat="server" Text='<%# Bind("WholesalePrice") %>' />
                                    <br />
                                    RetailPrice:
                        <asp:TextBox ID="RetailPriceTextBox" runat="server" Text='<%# Bind("RetailPrice") %>' />
                                    <br />
                                    ShippingCost:
                        <asp:TextBox ID="ShippingCostTextBox" runat="server" Text='<%# Bind("ShippingCost") %>' />
                                    <br />
                                    VAT:
                        <asp:TextBox ID="VATTextBox" runat="server" Text='<%# Bind("VAT") %>' />
                                    <br />
                                    ProductDiscont:
                        <asp:TextBox ID="ProductDiscontTextBox" runat="server" Text='<%# Bind("ProductDiscont") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <FooterStyle BackColor="Black" />
                                <HeaderStyle Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="#660033" />
                                <InsertItemTemplate>
                                    <asp:Image ID="omrokImage" runat="server" ImageUrl='<%# Bind("ProductImage") %>' Width="100" Height="100" />
                                    <br />
                                    ProductImage:
                        <asp:TextBox ID="ProductImageTextBox" runat="server" Text='<%# Bind("ProductImage") %>' />
                                    <br />
                                    ProductID:
                        <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                                    <br />
                                    Productname:
                        <asp:TextBox ID="ProductnameTextBox" runat="server" Text='<%# Bind("Productname") %>' />
                                    <br />
                                    Category:
                        <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
                                    <br />
                                    Brand:
                        <asp:TextBox ID="BrandTextBox" runat="server" Text='<%# Bind("Brand") %>' />
                                    <br />
                                    CountryOfOrigin:
                        <asp:TextBox ID="CountryOfOriginTextBox" runat="server" Text='<%# Bind("CountryOfOrigin") %>' />
                                    <br />
                                    ManufactureDat:
                        <asp:TextBox ID="ManufactureDatTextBox" runat="server" Text='<%# Bind("ManufactureDat") %>' />
                                    <br />
                                    ManufactureCode:
                        <asp:TextBox ID="ManufactureCodeTextBox" runat="server" Text='<%# Bind("ManufactureCode") %>' />
                                    <br />
                                    ExpiryDate:
                        <asp:TextBox ID="ExpiryDateTextBox" runat="server" Text='<%# Bind("ExpiryDate") %>' />
                                    <br />
                                    Supplier:
                        <asp:TextBox ID="SupplierTextBox" runat="server" Text='<%# Bind("Supplier") %>' />
                                    <br />
                                    Author:
                        <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                                    <br />
                                    WholesalePrice:
                        <asp:TextBox ID="WholesalePriceTextBox" runat="server" Text='<%# Bind("WholesalePrice") %>' />
                                    <br />
                                    RetailPrice:
                        <asp:TextBox ID="RetailPriceTextBox" runat="server" Text='<%# Bind("RetailPrice") %>' />
                                    <br />
                                    ShippingCost:
                        <asp:TextBox ID="ShippingCostTextBox" runat="server" Text='<%# Bind("ShippingCost") %>' />
                                    <br />
                                    VAT:
                        <asp:TextBox ID="VATTextBox" runat="server" Text='<%# Bind("VAT") %>' />
                                    <br />
                                    ProductDiscont:
                        <asp:TextBox ID="ProductDiscontTextBox" runat="server" Text='<%# Bind("ProductDiscont") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <div>
                                        <hr />
                                        <table border="0" style="text-align: left; font-weight: bold;">
                                            <tr>
                                                <td rowspan="20" style="width: 200px; vertical-align: top;" valign="top">
                                                    <div valign="top">
                                                        <asp:Image ID="omrokImage" runat="server" ImageUrl='<%# Bind("ProductImage") %>' ImageAlign="Middle" AlternateText="20img" Width="300" Height="300" />
                                                    </div>
                                                </td>
                                                <td style="width: 20px;" rowspan="19"></td>
                                            </tr>
                                            <tr style="">
                                                <!-- <td><asp:Label ID="ProductImageLabel" runat="server" Text='<%# Bind("ProductImage") %>' /> </td> -->
                                            </tr>
                                            <tr style="">
                                                <td colspan="2" style="border-bottom-width: thick; border-top-color: maroon; width: 400px;"></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 150px;"><span>ProductID:</span></td>
                                                <td style="width: 200px;">
                                                    <div>
                                                        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Bind("ProductID") %>' CssClass="classProdLabel" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span>Productname:</span></td>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="ProductnameLabel" runat="server" Text='<%# Bind("Productname") %>' CssClass="classProdLabel" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span>Category:</span></td>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="CategoryLabel" runat="server" Text='<%# Bind("Category") %>' CssClass="classProdLabel" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span>Brand:</span></td>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="BrandLabel" runat="server" Text='<%# Bind("Brand") %>' CssClass="classProdLabel" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span>Country Of Origin:</span></td>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="CountryOfOriginLabel" runat="server" Text='<%# Bind("CountryOfOrigin") %>' CssClass="classProdLabel" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span>Manufacture Date:</span></td>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="ManufactureDatLabel" runat="server" Text='<%# Bind("ManufactureDat") %>' CssClass="classProdLabel" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span>Manufacture Code:</span></td>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="ManufactureCodeLabel" runat="server" Text='<%# Bind("ManufactureCode") %>' CssClass="classProdLabel" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span>Expiry Date:</span></td>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="ExpiryDateLabel" runat="server" Text='<%# Bind("ExpiryDate") %>' CssClass="classProdLabel" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span>Supplier:</span></td>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="SupplierLabel" runat="server" Text='<%# Bind("Supplier") %>' CssClass="classProdLabel" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span>Author:</span></td>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="AuthorLabel" runat="server" Text='<%# Bind("Author") %>' CssClass="classProdLabel" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span>Wholesale Price:</span></td>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="WholesalePriceLabel" runat="server" Text='<%# Bind("WholesalePrice") %>' CssClass="classProdLabel" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span>Retail Price:</span></td>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="RetailPriceLabel" runat="server" Text='<%# Bind("RetailPrice") %>' CssClass="classProdLabel" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span>Shipping Cost:</span></td>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="ShippingCostLabel" runat="server" Text='<%# Bind("ShippingCost") %>' CssClass="classProdLabel" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span>VAT:</span></td>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="VATLabel" runat="server" Text='<%# Bind("VAT") %>' CssClass="classProdLabel" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span>Product Discont:</span></td>
                                                <td>
                                                    <div>
                                                        <asp:Label ID="ProductDiscontLabel" runat="server" Text='<%# Bind("ProductDiscont") %>' CssClass="classProdLabel" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td colspan="2" style="text-align: center;">
                                                    <div>
                                                        <asp:Button ID="btnomrokPurchase" runat="server" OnClick="btnomrokPurchase_Click" Text="Shop NOW!" CssClass="btnStyle" BorderWidth="1px" />
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        <hr />
                                    </div>
                                </ItemTemplate>
                                <PagerSettings Mode="NumericFirstLast" Position="TopAndBottom" />
                                <PagerStyle Wrap="False" />
                            </asp:FormView>
                        </div>
                    </td>
                    <td style="vertical-align: top; border-right-style: solid; border-right-width:thin; border-right-color: green;" class="auto-style6">&nbsp;</td>
                    <td style="vertical-align: top; background-color:antiquewhite;" class="auto-style4" rowspan="2">
                        <div>
                            <APPLET CODE="" BASE="" width="400" height="300">

                            </APPLET>
                        </div>
                        <hr />
                        <div style="background-color:antiquewhite;">
                            <asp:TreeView ID="TreeView1" runat="server" ImageSet="Msdn" NodeIndent="10" Width="239px" ExpandDepth="0">
                                <HoverNodeStyle BackColor="#CCCCCC" BorderColor="#888888" BorderStyle="Solid" Font-Underline="True" />
                                <Nodes>
                                    <asp:TreeNode NavigateUrl="http://www" Text="World News" Value="World News"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="http://www" Text="BBC News" Value="BBC News"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="http://www" Text="Aljazeera News" Value="Aljazeera News"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="http://www" Text="New Vision Uganda" Value="New Vision Uganda"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="http://www" Text="Etop Newspaper" Value="Etop Newspaper"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="http://www" Text="African News" Value="African News"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="http://www" Text="CNN News" Value="CNN News"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="http://www" Text="TV Channels" Value="TV Channels"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="http://www" Text="AU Bulletins" Value="AU Bulletins"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="http://www" Text="UN Bulletins" Value="UN Bulletins"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="http://www" Text="Omrok Dynamics Technology" Value="Omrok Dynamics Technology">
                                        <asp:TreeNode NavigateUrl="http://www" Text="Machine Programming language" Value="Machine Programming language"></asp:TreeNode>
                                        <asp:TreeNode NavigateUrl="http://www" Text="Programming tutorials" Value="Programming tutorials"></asp:TreeNode>
                                        <asp:TreeNode NavigateUrl="http://www" Text="NeuRobotics" Value="NeuRobotics"></asp:TreeNode>
                                        <asp:TreeNode NavigateUrl="http://www" Text="Social Media" Value="Social Media"></asp:TreeNode>
                                        <asp:TreeNode NavigateUrl="http://www" Text="Omrok News" Value="Omrok News"></asp:TreeNode>
                                        <asp:TreeNode NavigateUrl="http://www" Text="Omrok Institute of Technology" Value="Omrok Institute of Technology"></asp:TreeNode>
                                        <asp:TreeNode NavigateUrl="http://www" Text="Omrok Business Focus" Value="Omrok Business Focus"></asp:TreeNode>
                                    </asp:TreeNode>
                                </Nodes>
                                <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="1px" VerticalPadding="2px" />
                                <ParentNodeStyle Font-Bold="False" />
                                <SelectedNodeStyle BackColor="White" BorderColor="#888888" BorderStyle="Solid" BorderWidth="1px" Font-Underline="False" HorizontalPadding="3px" VerticalPadding="1px" />
                            </asp:TreeView>
                            <br />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; border-right-style: solid; border-right-width:thin; border-right-color: green;"" colspan="2">
                        <div>
                            <asp:Chart ID="Chart1" runat="server" DataSourceID="XmlDataSource2" BackColor="LightGray" BackSecondaryColor="Maroon">
                                <Series>
                                    <asp:Series Name="Series1" ChartType="Spline" BorderColor="Maroon"></asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1" AlignmentOrientation="All">
                                        <Area3DStyle Inclination="10" />
                                    </asp:ChartArea>
                                </ChartAreas>
                                <Titles>
                                    <asp:Title Alignment="TopCenter" Font="Microsoft Sans Serif, 8pt, style=Bold" Name="Title1" Text="Product Wholesale Chart">
                                    </asp:Title>
                                </Titles>
                                <Annotations>
                                    <asp:PolygonAnnotation Name="PolygonAnnotation1">
                                    </asp:PolygonAnnotation>
                                </Annotations>
                            </asp:Chart>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>