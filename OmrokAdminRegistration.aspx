<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OmrokAdminRegistration.aspx.cs" Inherits="OmrokAdminRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Omrok Stuff Registration</title>
            <link rel="icon" href="/omroklogo.ico" type="image/x-icon" />
    <link rel="icon" href="/omroklogo.ico" type="image/ico" />
    <style type="text/css">
        body
        {
            background-color:transparent;
        }
        .auto-style1
        {
            width: 104%;
        }
        .txtBorder
        {
            border:none;
            border-radius:10px;
            font-weight: 700;
        }
        .auto-style2
        {
            text-align: right;
        }
        .auto-style3
        {
            width: 100%;
        }
        .auto-style4
        {
            text-align:right;
            font-size:larger;
            text-decoration: underline;
        }
        .auto-style5
        {
            width: 635px;
        }
        .auto-style6
        {
            width: 93px;
        }
        .auto-style7
        {
            text-align: left;
        }
        .auto-style8
        {
            width: 93px;
            font-weight: bold;
        }
        .auto-style9
        {
            text-align: right;
            font-weight: bold;
            width: 161px;
        }
        span
        {
            font-size:large;
        }
        .auto-style10
        {
            text-align: right;
            width: 161px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/OmrokStuffManagementSystem.xml"></asp:XmlDataSource>
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
        <div style="text-align: right;">
            <br />
            <table class="auto-style3">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        <asp:Literal ID="litNotice" Text="" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center; background-color:white; background-image:url(); overflow:hidden; background-repeat:no-repeat;"></td>
                    <td style="width:750px; text-align:center; background-color:white;">
                        <div>
                            <fieldset id="Fieldset1" runat="server" style="width: 720px; border-radius:40px; text-align: right; background-color: lightblue;">
                                <legend style="text-align: right;"><asp:Image ImageUrl="~/Assets/3.jpg" ImageAlign="Middle" Width="50" Height="20" runat="server" /></legend>
                                <div>
                                    <table class="auto-style1">
                                        <tr>
                                            <td colspan="6" class="auto-style4" style="text-align:right;"><div style="text-align:right;"><h2 style="width: 697px; text-align:right; background-color:transparent; height: 26px; margin-bottom: 1px; margin-top:2px;"><strong>Omrok Dynamics Stuff Member Registraion</strong></h2></div></td>
                                        </tr>
                                        <tr> 
                                            <td colspan="6"><strong>Employee ID:</strong>&nbsp;
                                                <asp:TextBox ID="txtStuffID" Text="" runat="server" Width="200" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"><span>First name:</span></td>
                                            <td class="auto-style7">
                                                <asp:TextBox ID="txtStuffFname" Text="" runat="server" CssClass="txtBorder" Width="200" />
                                            </td>
                                            <td class="auto-style2" rowspan="21">
                                                &nbsp;</td>
                                            <td class="auto-style9"><span>Last name:</span></td>
                                            <td class="auto-style7">
                                                <asp:TextBox ID="txtStuffLname" Text=""  CssClass="txtBorder" runat="server" Width="200" />
                                            </td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8">&nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                            <td class="auto-style9">
                                                &nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"><span>Gender:</span></td>
                                            <td class="auto-style7">
                                                <asp:DropDownList ID="rdStuffSex" runat="server">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>Male</asp:ListItem>
                                                    <asp:ListItem>Female</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td class="auto-style9">
                                                &nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                            <td class="auto-style2" rowspan="2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8">&nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                            <td class="auto-style9">
                                                &nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"><span>Email:</span></td>
                                            <td class="auto-style7">
                                                <asp:TextBox ID="txtStuffEmail" Text="" CssClass="txtBorder" TextMode="Email" runat="server" Width="200" />
                                            </td>
                                            <td class="auto-style9">
                                                &nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                            <td class="auto-style2" rowspan="2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8">&nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                            <td class="auto-style9">
                                                &nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"><span>Adress 1:</span></td>
                                            <td class="auto-style7">
                                                <asp:TextBox ID="txtStuffAddrss1" CssClass="txtBorder" Text="" runat="server" Width="200" />
                                            </td>
                                            <td class="auto-style9"><span>Address 2:</span></td>
                                            <td class="auto-style7">
                                                <asp:TextBox ID="txtStuffAddress2" CssClass="txtBorder" Text="" runat="server" Width="200" />
                                            </td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8">&nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                            <td class="auto-style9">
                                                &nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"><span>City:</span></td>
                                            <td class="auto-style7">
                                                <asp:DropDownList ID="cboStuffCity" runat="server" CssClass="txtBorder"  Width="200">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="#">City 1</asp:ListItem>
                                                    <asp:ListItem Value="">City 2</asp:ListItem>
                                                    <asp:ListItem Value="">City 3</asp:ListItem>
                                                    <asp:ListItem Value="">City 4</asp:ListItem>
                                                    <asp:ListItem Value="">City 5</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td class="auto-style9"><span>Zip:</span></td>
                                            <td class="auto-style7">
                                                <asp:TextBox ID="txtStuffZip" Text="" TextMode="Number" CssClass="txtBorder" runat="server" Width="200" />
                                            </td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8">&nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                            <td class="auto-style9">
                                                &nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"><span>State:</span></td>
                                            <td class="auto-style7">
                                                <asp:DropDownList ID="cboStuffState" CssClass="txtBorder" runat="server" Width="200">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>State 1</asp:ListItem>
                                                    <asp:ListItem>State 2</asp:ListItem>
                                                    <asp:ListItem>State 3</asp:ListItem>
                                                    <asp:ListItem>State 4</asp:ListItem>
                                                    <asp:ListItem>State 5</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td class="auto-style9"><span>Country:</span></td>
                                            <td class="auto-style7">
                                                <asp:DropDownList ID="cboStuffCountry" runat="server" CssClass="txtBorder" Width="200">
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
                                                    <asp:ListItem>Congo, Democratic Republic of the</asp:ListItem>
                                                    <asp:ListItem>Congo, Republic of the</asp:ListItem>
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
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8">&nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                            <td class="auto-style9">
                                                &nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"><span>Telephone:</span></td>
                                            <td class="auto-style7">
                                                <asp:TextBox ID="txtStuffTel" Text="" TextMode="Phone" runat="server" CssClass="txtBorder" Width="200" />
                                            </td>
                                            <td class="auto-style9"><span>Mobile No.:</span></td>
                                            <td class="auto-style7">
                                                <asp:TextBox ID="txtStuffMob" Text="" TextMode="Phone" CssClass="txtBorder" runat="server" Width="200" />
                                            </td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8">&nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                            <td class="auto-style9">
                                                &nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"><span>Fax:</span></td>
                                            <td class="auto-style7">
                                                <asp:TextBox ID="txtStuffFax" Text="" TextMode="number" CssClass="txtBorder" runat="server" Width="200" />
                                            </td>
                                            <td class="auto-style9"><span>Secondary Email:</span></td>
                                            <td class="auto-style7">
                                                <asp:TextBox ID="txtStuffSecondEmail" Text="" TextMode="Email" CssClass="txtBorder" runat="server" Width="200" />
                                            </td>
                                            <td class="auto-style2" rowspan="2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8">&nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                            <td class="auto-style9">
                                                &nbsp;</td>
                                            <td class="auto-style7">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"><span>Profile:</span></td>
                                            <td class="auto-style7">
                                                <asp:DropDownList ID="cboStuffProfile" CssClass="txtBorder" runat="server" Width="200">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>CEO</asp:ListItem>
                                                    <asp:ListItem>Manager</asp:ListItem>
                                                    <asp:ListItem>Supervisor</asp:ListItem>
                                                    <asp:ListItem>Developer</asp:ListItem>
                                                    <asp:ListItem>Product Owner</asp:ListItem>
                                                    <asp:ListItem>Team manager</asp:ListItem>
                                                    <asp:ListItem>Advertiser</asp:ListItem>
                                                    <asp:ListItem>Supplier</asp:ListItem>
                                                    <asp:ListItem>Delivery</asp:ListItem>
                                                    <asp:ListItem>Finance</asp:ListItem>
                                                    <asp:ListItem>Stores</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td class="auto-style9"><span>Company name:</span></td>
                                            <td class="auto-style7">
                                                <asp:TextBox ID="txtStuffOrg" Text="" CssClass="txtBorder" runat="server" Width="200" />
                                            </td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">&nbsp;</td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                            <td class="auto-style10">
                                                &nbsp;</td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">&nbsp;</td>
                                            <td class="auto-style2"><span><strong>Enter security number below</strong></span></td>
                                            <td class="auto-style10">&nbsp;</td>
                                            <td class="auto-style2">&nbsp;</td>
                                            <td class="auto-style2" rowspan="3">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">&nbsp;</td>
                                            <td class="auto-style2" style="text-align:center;"><div><asp:Label ID="lblSecurityNumber" Text="20M20k" runat="server" Height="50" Width="150" ForeColor="white" Font-Bold="true" Font-Size="Larger" BackColor="Gray"></asp:Label></div></td>
                                            <td class="auto-style10">&nbsp;</td>
                                            <td class="auto-style2">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">&nbsp;</td>
                                            <td class="auto-style2">&nbsp;</td>
                                            <td class="auto-style10">&nbsp;</td>
                                            <td class="auto-style2">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">
                                            </td>
                                            <td class="auto-style2" colspan="5" style="text-align:right;">
                                               <div style="text-align:center;"><asp:Button ID="btnStuffReg" runat="server" Height="35px" Text="Continue Registration..." CssClass="txtBorder" Width="221px" BackColor="green" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="white" OnClick="btnStuffReg_Click" /></div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </fieldset>
                        </div>
                    </td>
                </tr>
            </table>            
        </div>
    </form>
</body>
</html>