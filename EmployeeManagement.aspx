<%@ Page Title="OmrokEmployeeManagement" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="EmployeeManagement.aspx.cs" Inherits="EmployeeManagement" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Omrok Employee Datail</title>
    <style type="text/css">
        .auto-style4
        {
            width: 433px;
            height: 107px;
            text-align: right;
            vertical-align:top;
        }
        .auto-style5
        {
            height: 107px;
            width: 450px;
        }

        .accdnHeader
        {
              background-color: blue;
          border:1px solid #4cff00;
          color:white;
          cursor:pointer;
          font-family:Arial, sans-serif;
          font-size:11px;
          font-weight:bold;
          margin-top:5px;
          padding:5px;
          width:900px;
        }
        .accdnHeaderSelected
        {
            background-color: #4cff00;
            border: 1px solid ;
            color:white;
            cursor: pointer;
            font-family: Arial, sans-serif;
            font-size: 11px;
            font-weight:bold;
            margin-top:auto;
            padding:5px;
            width:900px;
        }
        .accdnContent
        {
            background-color:white;
            border-color: #4cff00;
            border-right: 1px solid;
            border-style: none solid solid;
            border-width: medium 1px 1px;
            padding: 10px 5px 5px;
            width:900px;
        }
        .auto-style7
        {
            height: 773px;
            width: 100%;
        }
        .auto-style8
        {
            height: 655px;
            width: 422px;
            vertical-align:top;
        }
        .auto-style10
        {
            width: 137px;
        }
        .auto-style14 {
            width: 1299px;
            height: 326px;
        }
        .auto-style15 {
            width: 432px;
        }
        .auto-style16 {
            width: 154px;
            background-color:blanchedalmond;
            vertical-align:top;
        }
        .auto-style17 {
            width: 232px;
            background-color:burlywood;
            height: 282px;
        }
        .auto-style18 {
            width: 224px;
        }
        .auto-style19 {
            height: 330px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="DataManager">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:omrokEmployeeConnectionstring %>" ProviderName="<%$ ConnectionStrings:omrokEmployeeConnectionstring.ProviderName %>" SelectCommand="SELECT * FROM [OmrokEmployees]"></asp:SqlDataSource>
    <div style="text-align: center;" VALIGN="top">
        <table style="text-align: center; " border="0" align="center" class="auto-style14" VALIGN="top">
            <tr>
                <td class="auto-style5" style="text-align: center;">
                </td>
                <td style="text-align: right;" class="auto-style15">
                    <div style="text-align: center;">
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
                <td class="auto-style4" valign="top">
                    <div>
                        <table class="auto-style19">
                            <tr>
                                <td class="auto-style18"></td>
                                <td>
                                    <div valign="top" align="left" class="auto-style17">
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
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <table border="1" class="auto-style7">            
            <tr>
                <td rowspan="23" class="auto-style16">
                    <div>
                        <br />
                    </div>
                    <div>
                        <asp:Menu ID="VomrokEmployeeMenu" runat="server" ForeColor="DarkBlue" Font-Bold="true" Font-Size="Medium" style="width: 172px" BorderStyle="None">
                            <DynamicHoverStyle Font-Bold="True" />
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
                </td>
                <td rowspan="23" style="width:15px;"></td>
                <td class="auto-style8">
                    <fieldset id="empDatafield" style="border-style: none; border-color: inherit; border-width: medium; background-color: white; vertical-align:top; width: 1020px;">
                        <legend style="font-weight:bold; font-size:large;">Employes details</legend>
                        <div style="text-align:center; width: 1034px;">
                        <table border="0" style="text-align:left; width: 1041px">                            
                            <tr>
                                <td colspan="8">
                                    <asp:Label ID="lblNotification" ForeColor="Red" Font-Bold="true" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10">
                                     <asp:Image ID="empPhoto" ImageUrl="~/omroklogo.ico" AlternateText="20img" Width="103px" Height="99px" runat="server" />
                                </td>
                                <td>
                                     <asp:FileUpload ID="EmpPhotoUpload" runat="server" Height="21px" Width="214px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10">Employee ID:</td>
                                <td>
                                    <asp:TextBox ID="txtEmpid" Text="" runat="server" /></td>
                            </tr>
                            <tr>
                                <td class="auto-style10"></td>
                            </tr>
                            <tr>
                                <td class="auto-style10">First name:</td>
                                <td>
                                    <asp:TextBox ID="txtFname" Text="" runat="server" /></td>
                                <td></td>
                                <td>Middle name:(Optional)</td>
                                <td>
                                    <asp:TextBox ID="txtMname" Text="" runat="server" /></td>
                                <td></td>
                                <td>Last name:</td>
                                <td>
                                    <asp:TextBox ID="txtLname" Text="" runat="server" /></td>
                            </tr>
                            <tr>
                                <td class="auto-style10"></td>
                            </tr>
                            <tr>
                                <td class="auto-style10">Birth date:</td>
                                <td>
                                    <asp:TextBox ID="txtDate" Text="" runat="server" TextMode="Date" /></td>
                                <td></td>
                                <td>Gender</td>
                                <td>
                                    <asp:DropDownList ID="cboGender" runat="server" DropDownStyle="DropDownList">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Male</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td></td>
                                <td>Hiring date:</td>
                                <td>
                                    <asp:TextBox ID="txtHiredate" Text="" runat="server" TextMode="Date" /></td>
                            </tr>
                            <tr>
                                <td colspan="8">
                                    <hr />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10">Address 1:</td>
                                <td>
                                    <asp:TextBox ID="txtAdrss1" Text="" runat="server" TextMode="MultiLine" /></td>
                                <td></td>
                                <td>Address 2:</td>
                                <td>
                                    <asp:TextBox ID="txtAddrss2" Text="" runat="server" TextMode="MultiLine" /></td>
                                <td></td>
                                <td>Email:</td>
                                <td>
                                    <asp:TextBox ID="txtEmail" Text="" TextMode="Email" runat="server" /></td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td>City:</td>
                                <td>
                                    <asp:DropDownList ID="cboEmpCity" runat="server" Width="150">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>City 1</asp:ListItem>
                                        <asp:ListItem>City 2</asp:ListItem>
                                        <asp:ListItem>City 3</asp:ListItem>
                                        <asp:ListItem>City 4</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td></td>
                                <td>ZipCode:</td>
                                <td>
                                    <asp:TextBox ID="txtEmpZipcode" Text="" runat="server" /></td>
                                <td></td>
                                <td>State:</td>
                                <td>
                                    <asp:DropDownList ID="cboEmpState" runat="server" Width="200">
                                    <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>State 1</asp:ListItem>
                                        <asp:ListItem>State 2</asp:ListItem>
                                        <asp:ListItem>State 3</asp:ListItem>
                                        <asp:ListItem>State 4</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Country:</td>
                                <td>
                                    <asp:DropDownList ID="cboEmpCountry" runat="server">
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
                                    </asp:DropDownList></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="auto-style10"></td>
                            </tr>
                            <tr>
                                <td class="auto-style10">Telephone:</td>
                                <td>
                                    <asp:TextBox ID="txtTel" Text="" TextMode="Phone" MaxLength="20" runat="server" /></td>
                                <td></td>
                                <td>Mobile No.:</td>
                                <td>
                                    <asp:TextBox ID="txtMobile" Text="" TextMode="Phone" MaxLength="20" runat="server" /></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td colspan="8">
                                    <hr />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10">Employee department</td>
                            </tr>
                            <tr>
                                <td class="auto-style10">Department Id:</td>
                                <td>
                                    <asp:TextBox ID="txtDeptid" Text="" runat="server" /></td>
                                <td></td>
                                <td>Name:</td>
                                <td>
                                    <asp:TextBox ID="txtDeptname" runat="server" /></td>
                                <td></td>
                                <td>Section:</td>
                                <td>
                                    <asp:DropDownList ID="cboDeptsection" runat="server" >
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Feasibilty Analysis Section</asp:ListItem>
                                        <asp:ListItem>Data Analysis Section</asp:ListItem>
                                        <asp:ListItem>Development Section</asp:ListItem>
                                        <asp:ListItem>Testing Section</asp:ListItem>
                                        <asp:ListItem>Reception Section</asp:ListItem>
                                        <asp:ListItem>Customer Inquiry Section</asp:ListItem>
                                        <asp:ListItem>Finance Section</asp:ListItem>
                                        <asp:ListItem>Delivery Section</asp:ListItem>
                                        <asp:ListItem>Advertising Section</asp:ListItem>
                                        <asp:ListItem>Head of Department Section</asp:ListItem>
                                        <asp:ListItem>Marketting Section</asp:ListItem>
                                        <asp:ListItem>Brokerage Section</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10"></td>
                            </tr>
                            <tr>
                                <td class="auto-style10">Supervisor:</td>
                                <td>
                                    <asp:TextBox ID="txtSupervisor" runat="server" /></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td colspan="7"></td>
                                <td style="text-align: center; font-weight: bold; font-size: large;">
                                    <asp:Button ID="btnSavedetail1" Text="Save Details" runat="server" OnClick="btnSavedetail1_Click" Style="background-color: lightgreen; border-radius: 50%; box-shadow: 0 0 3px red; text-align: center; font-weight: bold; font-size: large;" Height="28px" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="8">
                                    <hr />
                                </td>
                            </tr>
                        </table>
                        </div>
                        <div>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                        </div>
                    </fieldset>
                </td>
                <td style="background-color:white;">
                </td>
            </tr>
            </table>
    </div>
    <footer style="background-color: black; height: 200px;">
        <hr />
        <br />
        <br />
        <br />
        <div style="text-align: center;">
            <asp:TextBox ID="txtSrch" Text="Search box" runat="server" Height="18px" Width="265px" />
            &nbsp;<asp:Button ID="btnSrch" runat="server" Text="Search" Height="23px" Width="103px" />
        </div>
    </footer>
</asp:Content>