<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="ProductMaster.aspx.cs" Inherits="ProductMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <script src="@Url.Content("~/Scripts/jquery-1.4.1.min.js")" type ="text/javascript" ></script>
    <script src="@Url.Content("~/Scripts/jquery.validation.min.js")" type="text/javascript" ></script>
    <script src="@Url.Content("~/Scripts/jquery.validation.unobtrusive.min.js")" type="text/javascript" ></script>
    <style type="text/css">
        body
        {
            background-color:transparent;
        }
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            text-align: center;
        }
        .auto-style3
        {
            width: 528px;
        }
        .btnProdSave
        {
            width:200px;
            height:50px;
            font-weight:bold;
            font-size:large;
            border-radius:50%;
        }
        .auto-style4
        {
            text-align: left;
        }
        .auto-style6 {
            height: 206px;
            width: 288px;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style11 {
            width: 199px;
            height: 235px;
        }
        .auto-style12 {
            height: 323px;
        }
        .auto-style13 {
            width: 585px;
            height: 1034px;
        }
        .auto-style14 {
            width: 256px;
        }
        .auto-style15 {
            text-align: left;
            width: 256px;
        }
        .auto-style16 {
            text-align: center;
            width: 256px;
        }
        .auto-style17 {
            width: 97px;
        }
        .auto-style18 {
            width: 302px;
        }
        .auto-style19 {
            width: 330px;
            height: 235px;
        }
        .auto-style20 {
            height: 235px;
        }
        .auto-style21 {
            height: 6px;
        }
        .auto-style22 {
            width: 1299px;
            height: 100%;
        }
        .auto-style23 {
            width: 431px;
        }
        .auto-style24 {
            width: 432px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="DataManager">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT * FROM [OmrokProductData_tbl]"></asp:SqlDataSource>
    <div>
        <table border="0" class="auto-style1">
            <tr>
                <td class="auto-style18"></td>
                <td colspan="3">
                    <div style="text-align: center;" class="auto-style12">
                        <asp:Timer ID="Timer1" Interval="10000" runat="server"></asp:Timer>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="timer1" EventName="tick" />
                            </Triggers>
                            <ContentTemplate>
                                <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/App_Data/OmrokDynamicsADS.xml" Target="_blank" Width="600" Height="300" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="5">
                    <hr />
                </td>
            </tr>
            <tr>
                <td style="text-align: left;" valign="top" class="auto-style18"><br /><br />
                    <div align="center" class="auto-style6">
                        <asp:Menu ID="Menu1" runat="server" Height="34px" align="left" BorderStyle="None" Font-Bold="True" ForeColor="maroon" Font-Size="Medium">
                            <Items>
                                <asp:MenuItem Text="Home" Value="home" NavigateUrl="~/omrokLogin.html"></asp:MenuItem>
                                <asp:MenuItem Text="Employee Information" Value="imployeeinformation" NavigateUrl="~/EmployeeManagement.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Product Data Entry" Value="productdataentry" NavigateUrl="~/ProductMaster.aspx">
                                    <asp:MenuItem NavigateUrl="~/DisplayOmrokProductInformation.aspx" Text="Product Information Table" Value="Product Information Table"></asp:MenuItem>
                                </asp:MenuItem>
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
                    <hr />
                    <div></div>
                </td>
                <td style="text-align: center; width: 0.5px; border-right-style: solid; border-right-width: thin; border-right-color: #008000;">&nbsp;</td>
                <td style="text-align: center;" class="auto-style3">
                    <div style="text-align: center;">
                        <fieldset style="border-style: none; border-color: inherit; border-width: medium; background-color: transparent; font-weight: bold; font-size: large; text-align: center; " class="auto-style13">
                            <legend><asp:Label ID="lblNotice" Text="" ForeColor="Red" runat="server" /></legend>
                            <div style="text-align: center;">
                                <table border="0" style="background-color: white; text-align: center; font-weight: bold; height: 898px; width: 100%;">
                                    <tr>
                                        <td class="auto-style14">
                                            </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" align="left">
                                            <asp:Image ID="ProductImage" ImageUrl="~/omroklogo.ico" ImageAlign="Middle" AlternateText="20img" runat="server" Width="130px" Height="133px" /><br /><br />
                                            <asp:FileUpload ID="UploadProductImage" runat="server" BackColor="Transparent" BorderStyle="None" EnableTheming="False" ForeColor="Blue" Width="335px" /><br /><br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15"><label>Serial Code:</label></td>
                                        <td class="auto-style4">
                                            <asp:TextBox ID="txtSerialcode" runat="server" Width="200" /></td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15"><label>Product name:</label></td>
                                        <td class="auto-style4">
                                            <asp:TextBox ID="txtProdTitle" runat="server" Width="200" /></td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15"><label>Category:</label></td>
                                        <td class="auto-style4">
                                            <asp:DropDownList ID="cboCateg" runat="server" Width="150">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>Two Wheeler</asp:ListItem>
                                                <asp:ListItem>Four wheeler</asp:ListItem>
                                                <asp:ListItem>Food Stuffs</asp:ListItem>
                                                <asp:ListItem>Cosmetics</asp:ListItem>
                                                <asp:ListItem>Computers</asp:ListItem>
                                                <asp:ListItem>Computer Software</asp:ListItem>
                                                <asp:ListItem>Computer hardware</asp:ListItem>
                                                <asp:ListItem>Gowns</asp:ListItem>
                                                <asp:ListItem>Shoes</asp:ListItem>
                                                <asp:ListItem>Jackets</asp:ListItem>
                                                <asp:ListItem>Candy</asp:ListItem>
                                                <asp:ListItem>Schoalstics</asp:ListItem>
                                                <asp:ListItem>Pharmacy</asp:ListItem>
                                                <asp:ListItem>Tourism</asp:ListItem>
                                                <asp:ListItem>Film Industry</asp:ListItem>
                                                <asp:ListItem>Non-Veg foods</asp:ListItem>
                                                <asp:ListItem>Veg-foods</asp:ListItem>
                                                <asp:ListItem>Books</asp:ListItem>
                                                <asp:ListItem>Novels</asp:ListItem>
                                                <asp:ListItem>Engineering tools</asp:ListItem>
                                                <asp:ListItem>Cleaners</asp:ListItem>
                                                <asp:ListItem>Hotel industry</asp:ListItem>
                                                <asp:ListItem>Domestic material</asp:ListItem>
                                                <asp:ListItem>Animals</asp:ListItem>
                                                <asp:ListItem>Pets</asp:ListItem>
                                                <asp:ListItem>Toys</asp:ListItem>
                                                <asp:ListItem>Agriculture products</asp:ListItem>
                                                <asp:ListItem>Transportation</asp:ListItem>
                                                <asp:ListItem>Education</asp:ListItem>
                                                <asp:ListItem>Weapons</asp:ListItem>
                                                <asp:ListItem>Electronics</asp:ListItem>
                                                <asp:ListItem>Textile</asp:ListItem>
                                                <asp:ListItem>Wines</asp:ListItem>
                                                <asp:ListItem>Tobacco</asp:ListItem>
                                                <asp:ListItem>Musical</asp:ListItem>
                                                <asp:ListItem>Movies</asp:ListItem>
                                                <asp:ListItem>CDs</asp:ListItem>
                                                <asp:ListItem>DVDs</asp:ListItem>
                                                <asp:ListItem>Kitchen</asp:ListItem>
                                                <asp:ListItem>Laundry</asp:ListItem>
                                                <asp:ListItem>Car wash</asp:ListItem>
                                                <asp:ListItem>Airport</asp:ListItem>
                                                <asp:ListItem>Ships</asp:ListItem>
                                                <asp:ListItem>Aerospace</asp:ListItem>
                                                <asp:ListItem>Religion</asp:ListItem>
                                                <asp:ListItem>Bible</asp:ListItem>
                                                <asp:ListItem>Furniture</asp:ListItem>
                                                <asp:ListItem>Interior design</asp:ListItem>
                                                <asp:ListItem>Warehousing</asp:ListItem>
                                                <asp:ListItem>Construction</asp:ListItem>
                                                <asp:ListItem>Chemical</asp:ListItem>
                                                <asp:ListItem>Physics Lab</asp:ListItem>
                                                <asp:ListItem>Chemistry lab</asp:ListItem>
                                                <asp:ListItem>Biology lab</asp:ListItem>
                                                <asp:ListItem>Computer lab</asp:ListItem>
                                                <asp:ListItem>Psychology</asp:ListItem>
                                                <asp:ListItem>Opticals</asp:ListItem>
                                                <asp:ListItem>Emergency tools</asp:ListItem>
                                                <asp:ListItem>Spare parts</asp:ListItem>
                                                <asp:ListItem>Old material</asp:ListItem>
                                                <asp:ListItem>Used cars</asp:ListItem>
                                                <asp:ListItem>Used motorbikes</asp:ListItem>
                                                <asp:ListItem>Bicycles</asp:ListItem>
                                                <asp:ListItem>Food spice</asp:ListItem>
                                                <asp:ListItem>Cusines and country food</asp:ListItem>
                                                <asp:ListItem>Technology</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15"><label>Brand:</label></td>
                                        <td class="auto-style4">
                                            <asp:DropDownList ID="cboBrand" runat="server" Width="150">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>New Product</asp:ListItem>
                                                <asp:ListItem>Used Product</asp:ListItem>
                                                <asp:ListItem>Delicate Product</asp:ListItem>
                                                <asp:ListItem>Hardware product</asp:ListItem>
                                                <asp:ListItem>Software Product</asp:ListItem>
                                                <asp:ListItem>Latest Product</asp:ListItem>
                                                <asp:ListItem>Labeled Products</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15"><label>Country of origin:</label></td>
                                        <td class="auto-style4">
                                            <asp:DropDownList ID="cboCntryOfOrigin" runat="server" Width="150">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>Afghanistan</asp:ListItem>
                                                <asp:ListItem>Albania</asp:ListItem>
                                                <asp:ListItem>Algeria</asp:ListItem>
                                                <asp:ListItem>Andorra</asp:ListItem>
                                                <asp:ListItem>Angola</asp:ListItem>
                                                <asp:ListItem>Antigua and Barbuda</asp:ListItem>
                                                <asp:ListItem>Argentina</asp:ListItem>
                                                <asp:ListItem>Armenia</asp:ListItem>
                                                <asp:ListItem>Aruba</asp:ListItem>
                                                <asp:ListItem>Australia</asp:ListItem>
                                                <asp:ListItem>Austria</asp:ListItem>
                                                <asp:ListItem>Azerbaijan</asp:ListItem>
                                                <asp:ListItem>Bahamas, The</asp:ListItem>
                                                <asp:ListItem>Bahrain</asp:ListItem>
                                                <asp:ListItem>Bangladesh</asp:ListItem>
                                                <asp:ListItem>Barbados</asp:ListItem>
                                                <asp:ListItem>Belarus</asp:ListItem>
                                                <asp:ListItem>Belgium</asp:ListItem>
                                                <asp:ListItem>Belize</asp:ListItem>
                                                <asp:ListItem>Benin</asp:ListItem>
                                                <asp:ListItem>Bhutan</asp:ListItem>
                                                <asp:ListItem>Bolivia</asp:ListItem>
                                                <asp:ListItem>Bosnia and Herzegovina</asp:ListItem>
                                                <asp:ListItem>Botswana</asp:ListItem>
                                                <asp:ListItem>Brazil</asp:ListItem>
                                                <asp:ListItem>Brunei</asp:ListItem>
                                                <asp:ListItem>Bulgaria</asp:ListItem>
                                                <asp:ListItem>Burkina Faso</asp:ListItem>
                                                <asp:ListItem>Burma</asp:ListItem>
                                                <asp:ListItem>Burundi</asp:ListItem>
                                                <asp:ListItem>Cambodia</asp:ListItem>
                                                <asp:ListItem>Cameroon</asp:ListItem>
                                                <asp:ListItem>Canada</asp:ListItem>
                                                <asp:ListItem>Cabo Verde</asp:ListItem>
                                                <asp:ListItem>Central African Republic</asp:ListItem>
                                                <asp:ListItem>Chad</asp:ListItem>
                                                <asp:ListItem>Chile</asp:ListItem>
                                                <asp:ListItem>China</asp:ListItem>
                                                <asp:ListItem>Colombia</asp:ListItem>
                                                <asp:ListItem>Comoros</asp:ListItem>
                                                <asp:ListItem>D.R.Congo</asp:ListItem>
                                                <asp:ListItem>Costa Rica</asp:ListItem>
                                                <asp:ListItem>Cote d'Ivoire</asp:ListItem>
                                                <asp:ListItem>Croatia</asp:ListItem>
                                                <asp:ListItem>Cuba</asp:ListItem>
                                                <asp:ListItem>Curacao</asp:ListItem>
                                                <asp:ListItem>Cyprus</asp:ListItem>
                                                <asp:ListItem>Czechia</asp:ListItem>
                                                <asp:ListItem>Denmark</asp:ListItem>
                                                <asp:ListItem>Djibouti</asp:ListItem>
                                                <asp:ListItem>Dominica</asp:ListItem>
                                                <asp:ListItem>Dominican Republic</asp:ListItem>
                                                <asp:ListItem>East Timor (see Timor-Leste)</asp:ListItem>
                                                <asp:ListItem>Ecuador</asp:ListItem>
                                                <asp:ListItem>Egypt</asp:ListItem>
                                                <asp:ListItem>El Salvador</asp:ListItem>
                                                <asp:ListItem>Equatorial Guinea</asp:ListItem>
                                                <asp:ListItem>Eritrea</asp:ListItem>
                                                <asp:ListItem>Estonia</asp:ListItem>
                                                <asp:ListItem>Ethiopia</asp:ListItem>
                                                <asp:ListItem>Fiji</asp:ListItem>
                                                <asp:ListItem>Finland</asp:ListItem>
                                                <asp:ListItem>France</asp:ListItem>
                                                <asp:ListItem>Gabon</asp:ListItem>
                                                <asp:ListItem>Gambia, The</asp:ListItem>
                                                <asp:ListItem>Georgia</asp:ListItem>
                                                <asp:ListItem>Germany</asp:ListItem>
                                                <asp:ListItem>Ghana</asp:ListItem>
                                                <asp:ListItem>Greece</asp:ListItem>
                                                <asp:ListItem>Grenada</asp:ListItem>
                                                <asp:ListItem>Guatemala</asp:ListItem>
                                                <asp:ListItem>Guinea</asp:ListItem>
                                                <asp:ListItem>Guinea-Bissau</asp:ListItem>
                                                <asp:ListItem>Guyana</asp:ListItem>
                                                <asp:ListItem>Haiti</asp:ListItem>
                                                <asp:ListItem>Holy See</asp:ListItem>
                                                <asp:ListItem>Honduras</asp:ListItem>
                                                <asp:ListItem>Hong Kong</asp:ListItem>
                                                <asp:ListItem>Hungary</asp:ListItem>
                                                <asp:ListItem>Iceland</asp:ListItem>
                                                <asp:ListItem>India</asp:ListItem>
                                                <asp:ListItem>Indonesia</asp:ListItem>
                                                <asp:ListItem>Iran</asp:ListItem>
                                                <asp:ListItem>Iraq</asp:ListItem>
                                                <asp:ListItem>Ireland</asp:ListItem>
                                                <asp:ListItem>Israel</asp:ListItem>
                                                <asp:ListItem>Italy</asp:ListItem>
                                                <asp:ListItem>Jamaica</asp:ListItem>
                                                <asp:ListItem>Japan</asp:ListItem>
                                                <asp:ListItem>Jordan</asp:ListItem>
                                                <asp:ListItem>Kazakhstan</asp:ListItem>
                                                <asp:ListItem>Kenya</asp:ListItem>
                                                <asp:ListItem>Kiribati</asp:ListItem>
                                                <asp:ListItem>Korea, North</asp:ListItem>
                                                <asp:ListItem>Korea, South</asp:ListItem>
                                                <asp:ListItem>Kosovo</asp:ListItem>
                                                <asp:ListItem>Kuwait</asp:ListItem>
                                                <asp:ListItem>Kyrgyzstan</asp:ListItem>
                                                <asp:ListItem>Laos</asp:ListItem>
                                                <asp:ListItem>Latvia</asp:ListItem>
                                                <asp:ListItem>Lebanon</asp:ListItem>
                                                <asp:ListItem>Lesotho</asp:ListItem>
                                                <asp:ListItem>Liberia</asp:ListItem>
                                                <asp:ListItem>Libya</asp:ListItem>
                                                <asp:ListItem>Liechtenstein</asp:ListItem>
                                                <asp:ListItem>Lithuania</asp:ListItem>
                                                <asp:ListItem>Luxembourg</asp:ListItem>
                                                <asp:ListItem>Macau</asp:ListItem>
                                                <asp:ListItem>Macedonia</asp:ListItem>
                                                <asp:ListItem>Madagascar</asp:ListItem>
                                                <asp:ListItem>Malawi</asp:ListItem>
                                                <asp:ListItem>Malaysia</asp:ListItem>
                                                <asp:ListItem>Maldives</asp:ListItem>
                                                <asp:ListItem>Mali</asp:ListItem>
                                                <asp:ListItem>Malta</asp:ListItem>
                                                <asp:ListItem>Marshall Islands</asp:ListItem>
                                                <asp:ListItem>Mauritania</asp:ListItem>
                                                <asp:ListItem>Mauritius</asp:ListItem>
                                                <asp:ListItem>Mexico</asp:ListItem>
                                                <asp:ListItem>Micronesia</asp:ListItem>
                                                <asp:ListItem>Moldova</asp:ListItem>
                                                <asp:ListItem>Monaco</asp:ListItem>
                                                <asp:ListItem>Mongolia</asp:ListItem>
                                                <asp:ListItem>Montenegro</asp:ListItem>
                                                <asp:ListItem>Morocco</asp:ListItem>
                                                <asp:ListItem>Mozambique</asp:ListItem>
                                                <asp:ListItem>Namibia</asp:ListItem>
                                                <asp:ListItem>Nauru</asp:ListItem>
                                                <asp:ListItem>Nepal</asp:ListItem>
                                                <asp:ListItem>Netherlands</asp:ListItem>
                                                <asp:ListItem>New Zealand</asp:ListItem>
                                                <asp:ListItem>Nicaragua</asp:ListItem>
                                                <asp:ListItem>Niger</asp:ListItem>
                                                <asp:ListItem>Nigeria</asp:ListItem>
                                                <asp:ListItem>North Korea</asp:ListItem>
                                                <asp:ListItem>Norway</asp:ListItem>
                                                <asp:ListItem>Oman</asp:ListItem>
                                                <asp:ListItem>Pakistan</asp:ListItem>
                                                <asp:ListItem>Palau</asp:ListItem>
                                                <asp:ListItem>Palestinian Territories</asp:ListItem>
                                                <asp:ListItem>Panama</asp:ListItem>
                                                <asp:ListItem>Papua New Guinea</asp:ListItem>
                                                <asp:ListItem>Paraguay</asp:ListItem>
                                                <asp:ListItem>Peru</asp:ListItem>
                                                <asp:ListItem>Philippines</asp:ListItem>
                                                <asp:ListItem>Poland</asp:ListItem>
                                                <asp:ListItem>Portugal</asp:ListItem>
                                                <asp:ListItem>Qatar</asp:ListItem>
                                                <asp:ListItem>Romania</asp:ListItem>
                                                <asp:ListItem>Russia</asp:ListItem>
                                                <asp:ListItem>Rwanda</asp:ListItem>
                                                <asp:ListItem>Saint Kitts and Nevis</asp:ListItem>
                                                <asp:ListItem>Saint Lucia</asp:ListItem>
                                                <asp:ListItem>Saint Vincent and the Grenadines</asp:ListItem>
                                                <asp:ListItem>Samoa</asp:ListItem>
                                                <asp:ListItem>San Marino</asp:ListItem>
                                                <asp:ListItem>Sao Tome and Principe</asp:ListItem>
                                                <asp:ListItem>Saudi Arabia</asp:ListItem>
                                                <asp:ListItem>Senegal</asp:ListItem>
                                                <asp:ListItem>Serbia</asp:ListItem>
                                                <asp:ListItem>Seychelles</asp:ListItem>
                                                <asp:ListItem>Sierra Leone</asp:ListItem>
                                                <asp:ListItem>Singapore</asp:ListItem>
                                                <asp:ListItem>Sint Maarten</asp:ListItem>
                                                <asp:ListItem>Slovakia</asp:ListItem>
                                                <asp:ListItem>Slovenia</asp:ListItem>
                                                <asp:ListItem>Solomon Islands</asp:ListItem>
                                                <asp:ListItem>Somalia</asp:ListItem>
                                                <asp:ListItem>South Africa</asp:ListItem>
                                                <asp:ListItem>South Korea</asp:ListItem>
                                                <asp:ListItem>South Sudan</asp:ListItem>
                                                <asp:ListItem>Spain</asp:ListItem>
                                                <asp:ListItem>Sri Lanka</asp:ListItem>
                                                <asp:ListItem>Sudan</asp:ListItem>
                                                <asp:ListItem>Suriname</asp:ListItem>
                                                <asp:ListItem>Swaziland</asp:ListItem>
                                                <asp:ListItem>Sweden</asp:ListItem>
                                                <asp:ListItem>Switzerland</asp:ListItem>
                                                <asp:ListItem>Syria</asp:ListItem>
                                                <asp:ListItem>Taiwan</asp:ListItem>
                                                <asp:ListItem>Tajikistan</asp:ListItem>
                                                <asp:ListItem>Tanzania</asp:ListItem>
                                                <asp:ListItem>Thailand</asp:ListItem>
                                                <asp:ListItem>Timor-Leste</asp:ListItem>
                                                <asp:ListItem>Togo</asp:ListItem>
                                                <asp:ListItem>Tonga</asp:ListItem>
                                                <asp:ListItem>Trinidad and Tobago</asp:ListItem>
                                                <asp:ListItem>Tunisia</asp:ListItem>
                                                <asp:ListItem>Turkey</asp:ListItem>
                                                <asp:ListItem>Turkmenistan</asp:ListItem>
                                                <asp:ListItem>Tuvalu</asp:ListItem>
                                                <asp:ListItem>Uganda</asp:ListItem>
                                                <asp:ListItem>Ukraine</asp:ListItem>
                                                <asp:ListItem>United Arab Emirates</asp:ListItem>
                                                <asp:ListItem>United Kingdom</asp:ListItem>
                                                <asp:ListItem>Uruguay</asp:ListItem>
                                                <asp:ListItem>Uzbekistan</asp:ListItem>
                                                <asp:ListItem>Vanuatu</asp:ListItem>
                                                <asp:ListItem>Venezuela</asp:ListItem>
                                                <asp:ListItem>Vietnam</asp:ListItem>
                                                <asp:ListItem>Yemen</asp:ListItem>
                                                <asp:ListItem>Zambia</asp:ListItem>
                                                <asp:ListItem>Zimbabwe</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15"><label>Manufature date:</label></td>
                                        <td class="auto-style4">
                                            <asp:TextBox ID="txtManudate" runat="server" TextMode="Date" Width="200" /></td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15"><label>Manufacture code:</label></td>
                                        <td class="auto-style4">
                                            <asp:TextBox ID="txtManuCode" runat="server" TextMode="Number" Width="200"></asp:TextBox>
                                        </td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15"><label>Expiry date:</label></td>
                                        <td class="auto-style4">
                                            <asp:TextBox ID="txtExpdate" runat="server" TextMode="Date" Width="200" /></td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15"><label>Supplier:</label></td>
                                        <td class="auto-style4">
                                            <asp:TextBox ID="txtSupplier" runat="server" Width="200"></asp:TextBox>
                                        </td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15"><label>Manufacturer:</label></td>
                                        <td class="auto-style4">
                                            <asp:TextBox ID="txtAuthor" runat="server" Width="200"></asp:TextBox>
                                        </td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15"><label>Wholesale price:</label></td>
                                        <td class="auto-style4">
                                            <asp:TextBox ID="txtWholesalePrice" TextMode="Number" runat="server" Width="200"></asp:TextBox>
                                        </td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15"><label>Retail price:</label></td>
                                        <td class="auto-style4">
                                            <asp:TextBox ID="txtRetailPrice" TextMode="Number" runat="server" Width="200"></asp:TextBox>
                                        </td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15"><label>Shipping cost:</label></td>
                                        <td class="auto-style4">
                                            <asp:TextBox ID="txtShipCost" TextMode="Number" runat="server" Width="200"></asp:TextBox>
                                        </td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15"><label>Tax Included:</label></td>
                                        <td class="auto-style4">
                                            <asp:TextBox ID="txtVat" TextMode="Number" runat="server" Width="200"></asp:TextBox>
                                        </td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15"><label>Discount:</label></td>
                                        <td class="auto-style4">
                                            <asp:TextBox ID="txtProdDiscount" Text="" runat="server" Width="200" /></td>
                                        <td class="auto-style4">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style2" colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2" colspan="3">
                                            <asp:Button ID="btnSaveProduct" OnClick="btnSaveProduct_Click" runat="server" Text="Save Product" CssClass="btnProdSave" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <br />
                            <br />
                        </fieldset>
                        <br />
                        <span><asp:Image ID="Image2" runat="server" ImageUrl="~/Gallery/Omrok Quotes/OmrokQuote001.jpg" Width="573px" /></span>
                    </div>
                </td>
                <td style="text-align: center; background-color: transparent;" class="auto-style17">&nbsp;</td>
                <td style="text-align: center;" valign="top">
                    <div>
                        <asp:Image ID="Image1" runat="server" BorderStyle="None" ImageAlign="Middle" ImageUrl="~/Advertisement/Omrok Dynamics Technology/demand_supply_curve.gif" Height="236px" Width="360px" />
                    </div>
                    <div><br /><hr /><br /></div>
                    <div>
                        <table border="0" class="auto-style9">
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="auto-style19" align="left" VALIGN="top">
                                    <div valign="top" align="letf">
                                        <a href="#">World news</a><br />
                                        <a href="http://www.bbc.com">BBC</a><br />
                                        <a href="http://www.msn.com">MSN</a><br />
                                        <a href="http://www/facebook.com/omrokdynasys">Omrok Dynamics Technology</a><br />
                                        <a href="http://www.newvision.co.ug">Uganda New Vision</a><br />
                                        <a href="#">Aljazeera</a><br />
                                        <a href="#">Mtv News</a><br />
                                        <a href="#">Ntv Uganda</a><br />
                                        <a href="#">Uganda Daily Monitor</a><br />
                                        <a href="#">CNN news channel</a><br />
                                    </div>
                                </td>
                                <td class="auto-style11"></td>
                            </tr>
                            <tr>
                                <td class="auto-style20"></td>
                                <td class="auto-style19" align="center" VALIGN="top">
                                    &nbsp;</td>
                                <td class="auto-style11"></td>
                            </tr>
                        </table>
                    </div>

                </td>
            </tr>
            <tr>
                <td colspan="5"></td>
            </tr>
        </table>
    </div>
    <footer runat="server" style="height:300px; background-color:black">
        <div>
            <table border="0" class="auto-style22">
                <tr><td colspan="3" class="auto-style21"><hr /></td></tr>
                <tr>
                    <td class="auto-style23"></td>
                    <td class="auto-style24">
                        <div style="text-align: center;">
                            <asp:TextBox ID="txtSearch" runat="server" Text="Search" Width="370px" />
                            <br />
                            <br />
                            <asp:Button ID="btnomrokProductSearch" runat="server" Text="Search" Width="127px" />
                        </div>
                    </td>
                    <td class="auto-style24"></td>
                </tr>
            </table>
        </div>
    </footer>
</asp:Content>



