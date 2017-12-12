<%@ Page Title="" Language="C#" MasterPageFile="~/OmrokCustomer.master" AutoEventWireup="true" CodeFile="OmrokCustomer.aspx.cs" Inherits="OmrokCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2
        {
            width: 100%;
        }
        .auto-style3
        {            height: 26px;
        }
        .auto-style4
        {
            width: 268px;
        }
        .auto-style5
        {
        }
        .txtBox
        {
            width:200px; 
            border-radius:10px; 
            font-weight:bold;            
        }
        .auto-style6
        {
            width: 1301px;
        }
        .auto-style10
        {
            width: 433px;
        }
        .btnStyle
        {
            border-radius:30px;
            border-color:red;            
        }
        .auto-style11
        {
            height: 209px;
        }
        .auto-style13
        {
            width: 268px;
            height: 27px;
        }
        .auto-style16
        {
            width: 268px;
            height: 26px;
        }
        .auto-style17
        {
            height: 27px;
        }
        .auto-style18
        {
            height: 26px;
            width: 267px;
        }
        .auto-style19
        {
            height: 27px;
            width: 267px;
        }
        .auto-style20
        {
            width: 170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <div>
        <table class="auto-style6">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10" rowspan="5">&nbsp;</td>
                <td class="auto-style10">
                    <div>
                        <fieldset runat="server" style="width: 673px; border-radius: 30px; background-color: gray;">
                            <legend>wfe</legend>
                            <div>
                                <table class="auto-style2">
                                    <tr>
                                        <td colspan="3" style="background-color: maroon; text-align: center;">Customer Details</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 200px;"><span>Product name:</span></td>
                                        <td style="width: 300px;"><span></span>
                                            <asp:Label ID="lbl_omrokProductname" runat="server" Text="Label" CssClass="txtBox"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><span>First name;</span></td>
                                        <td class="auto-style4"><span></span>
                                            <asp:TextBox ID="txt_omrokCustFname" runat="server" CssClass="txtBox"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><span>Middle name:</span></td>
                                        <td class="auto-style4"><span></span>
                                            <asp:TextBox ID="txt_omrokCustMname" runat="server" CssClass="txtBox"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><span>Last name:</span></td>
                                        <td class="auto-style4"><span></span>
                                            <asp:TextBox ID="txt_omrokCustLname" runat="server" CssClass="txtBox"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><span>Telephone:</span></td>
                                        <td class="auto-style4"><span></span>
                                            <asp:TextBox ID="txt_omrokCustTel" runat="server" CssClass="txtBox" TextMode="Phone"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><span>Mobile:</span></td>
                                        <td class="auto-style4"><span></span>
                                            <asp:TextBox ID="txt_omrokCustMobile" runat="server" CssClass="txtBox" TextMode="Phone"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><span>Address 1:</span></td>
                                        <td class="auto-style4"><span></span>
                                            <asp:TextBox ID="txt_omrokCustAdrss1" runat="server" CssClass="txtBox"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><span>Address 2:</span></td>
                                        <td class="auto-style4"><span></span>
                                            <asp:TextBox ID="txt_omrokCustStreet2" runat="server" CssClass="txtBox"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><span>City:</span></td>
                                        <td class="auto-style4"><span></span>
                                            <asp:DropDownList ID="cbo_omrokCustCity" runat="server" CssClass="txtBox">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><span>State:</span></td>
                                        <td class="auto-style4"><span></span>
                                            <asp:DropDownList ID="cbo_omrokCustState" runat="server" CssClass="txtBox">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><span>Zip code:</span></td>
                                        <td class="auto-style4"><span></span>
                                            <asp:TextBox ID="txt_omrokCustZipcode" runat="server" CssClass="txtBox" TextMode="Number"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><span>Country:</span></td>
                                        <td class="auto-style4"><span></span>
                                            <asp:DropDownList ID="cbo_omrokCustCountry" runat="server" CssClass="txtBox">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <br /><br />
                            </div>
                        </fieldset>
                    </div>
                </td>
                <td rowspan="5"></td>
            </tr>
            <tr>
                <td><br /><hr /><br /></td>
            </tr>
            <tr>
                <td>
                    <div>
                        <fieldset style="width: 673px; border-radius: 30px; background-color: gray;">
                            <legend></legend>
                            <div>
                                <table border="1" class="auto-style11">
                                    <tr>
                                        <td class="auto-style3" colspan="3"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3"><span>Credit/Debit card:</span></td>
                                        <td class="auto-style16"><span></span>
                                            <asp:TextBox ID="txt_omrokCustCreditCard" runat="server" CssClass="txtBox" TextMode="Number"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style18">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3"><span>Bank name:</span></td>
                                        <td class="auto-style16"><span></span>
                                            <asp:TextBox ID="txt_omrokCustBank" runat="server" CssClass="txtBox"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style18">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3"><span>Bank A/c:</span></td>
                                        <td class="auto-style16"><span></span>
                                            <asp:TextBox ID="txt_omrokCustAccntBank" runat="server" CssClass="txtBox" TextMode="Number"></asp:TextBox>
                                        </td>
                                        <td class="auto-style18">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td class="auto-style16">&nbsp;</td>
                                        <td class="auto-style18">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style17"><span>Pin:</span></td>
                                        <td class="auto-style13"><span></span>
                                            <asp:TextBox ID="txt_omrokCustAccntPin" runat="server" CssClass="txtBox" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td class="auto-style19">&nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                            </div>
                        </fieldset>
                    </div>
                </td>
            </tr>
            <tr>
                <td><br /><hr /><br /></td>
            </tr>
            <tr>
                <td>
                    <div>
                        <fieldset style="width: 673px; border-radius: 30px; background-color: gray;">
                            <legend></legend>
                            <div>
                                <table border="1" style="width: 662px">
                                    <tr>
                                        <td class="auto-style5" colspan="3"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><span>Date of delivery:</span></td>
                                        <td class="auto-style4"><span></span>
                                            <asp:TextBox ID="txt_omrokCustDeliverDate" runat="server" TextMode="DateTime" CssClass="txtBox"></asp:TextBox>
                                        </td>
                                        <td class="auto-style20">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style20">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><span>Email:</span></td>
                                        <td class="auto-style4"><span></span>
                                            <asp:TextBox ID="txt_omrokCustEmail" TextMode="Email" runat="server" CssClass="txtBox"></asp:TextBox>
                                        </td>
                                        <td class="auto-style20">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="auto-style4">&nbsp;</td>
                                        <td class="auto-style20">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5" colspan="3">
                                            <div style="text-align: center;">
                                                <asp:Button ID="btnOmrokCustomerPurchase" runat="server" Text="Submit Purchase" OnClick="btnOmrokCustomerPurchase_Click" CssClass="btnStyle" BorderStyle="Solid" BorderWidth="1px" Font-Size="XX-Large" Font-Bold="true" BackColor="Transparent" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5"><span>adae</span></td>
                                        <td class="auto-style4"><span></span></td>
                                        <td class="auto-style20">&nbsp;</td>
                                    </tr>
                                </table>
                                <br /><br />
                            </div>
                        </fieldset>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>




