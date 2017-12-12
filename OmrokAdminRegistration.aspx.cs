using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Xml;
using System.Xml.Linq;
using System.Xml.XmlConfiguration;
using System.Xml.Schema;

public partial class OmrokAdminRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnStuffReg_Click(object sender, EventArgs e)
    {
        try
        {
            /*    if (txtStuffFname.Text == "") {   } 
                if (txtStuffLname.Text == "") { } 
                if (rdStuffSex.SelectedValue == "") { } 
                if (txtStuffEmail.Text == "") { } 
                if (txtStuffAddrss1.Text == "") { } 
                if (txtStuffAddress2.Text == "") { } 
                if (cboStuffCity.SelectedValue == "") { } 
                if (txtStuffZip.Text == "") { } 
                if (cboStuffState.SelectedValue == "") { } 
                if (cboStuffCountry.SelectedValue == "") { } 
                if (txtStuffTel.Text == "") { } 
                if (txtStuffMob.Text == "") { } 
                if (txtStuffFax.Text == "") { } 
                if (txtStuffSecondEmail.Text == "") { } 
                if (txtStuffOrg.Text == "") { } */
            if (txtStuffFname.Text == "" && txtStuffLname.Text == "" && rdStuffSex.SelectedValue == "" && txtStuffEmail.Text == "" && txtStuffAddrss1.Text == "" && txtStuffAddress2.Text == "" && cboStuffCity.SelectedValue == "" && txtStuffZip.Text == "" && cboStuffState.SelectedValue == "" && cboStuffCountry.SelectedValue == "" && txtStuffTel.Text == "" && txtStuffMob.Text == "" && txtStuffFax.Text == "" && txtStuffSecondEmail.Text == "" && txtStuffOrg.Text == "")
            {
                litNotice.Text = "...NULL Values are not allowed !...";
            }
            else if (txtStuffFname.Text != null && txtStuffLname.Text != null && rdStuffSex.SelectedValue != null && txtStuffEmail.Text != null && txtStuffAddrss1.Text != null && txtStuffAddress2.Text != null && cboStuffCity.SelectedValue != null && txtStuffZip.Text != null && cboStuffState.SelectedValue != null && cboStuffCountry.SelectedValue != null && txtStuffTel.Text != null && txtStuffMob.Text != null && txtStuffFax.Text != null && txtStuffSecondEmail.Text != null && txtStuffOrg.Text != null)
            {
                System.Xml.XmlDocument omrokEmpXml = new System.Xml.XmlDocument();
                omrokEmpXml.Load(Server.MapPath("~/App_Data/OmrokStuffInformation.xml"));
                System.Xml.XmlNode omrokXMLemployeeNode = omrokEmpXml.DocumentElement.FirstChild;
                System.Xml.XmlElement xmlElement = omrokEmpXml.CreateElement("OmrokStuffInformation");

                xmlElement.SetAttribute("StuffId", Server.HtmlEncode(txtStuffID.Text));
                xmlElement.SetAttribute("Firstname", Server.HtmlEncode(txtStuffFname.Text));
                xmlElement.SetAttribute("Lastname", Server.HtmlEncode(txtStuffLname.Text));
                    xmlElement.SetAttribute("Sex", Server.HtmlEncode(rdStuffSex.SelectedValue));
                       xmlElement.SetAttribute("Email", Server.HtmlEncode(txtStuffEmail.Text));
                            xmlElement.SetAttribute("Address", Server.HtmlEncode(txtStuffAddrss1.Text));
                                xmlElement.SetAttribute("Addres", Server.HtmlEncode(txtStuffAddress2.Text));
                                    xmlElement.SetAttribute("City", Server.HtmlEncode(cboStuffCity.SelectedValue));
                                        xmlElement.SetAttribute("ZipCode", Server.HtmlEncode(txtStuffZip.Text));
                                            xmlElement.SetAttribute("State", Server.HtmlEncode(cboStuffState.SelectedValue));
                                                xmlElement.SetAttribute("Country", Server.HtmlEncode(cboStuffCountry.SelectedValue));
                                                    xmlElement.SetAttribute("Telephone", Server.HtmlEncode(txtStuffTel.Text));
                                                        xmlElement.SetAttribute("Mobilephone", Server.HtmlEncode(txtStuffMob.Text));
                                                            xmlElement.SetAttribute("Fax", Server.HtmlEncode(txtStuffFax.Text));
                                                                xmlElement.SetAttribute("SecondEmail", Server.HtmlEncode(txtStuffSecondEmail.Text));
                                                                    xmlElement.SetAttribute("PreviousOrganization", Server.HtmlEncode(txtStuffOrg.Text));


                omrokEmpXml.DocumentElement.InsertBefore(xmlElement, omrokXMLemployeeNode);

                omrokEmpXml.Save(Server.MapPath("~/App_Data/OmrokStuffInformation.xml"));

                BindData();

                litNotice.Text = "Omrok DYNAMICS Employee Information saved !";
                txtStuffID.Text = "";
                txtStuffFname.Text = "";
                txtStuffLname.Text = "";
                    rdStuffSex.SelectedValue = "";
                        txtStuffEmail.Text = "";
                            txtStuffAddrss1.Text = "";
                                txtStuffAddress2.Text = "";
                                    cboStuffCity.SelectedValue = "";
                                        txtStuffZip.Text = "";
                                            cboStuffState.SelectedValue = "";
                                                cboStuffCountry.SelectedValue = "";
                                                    txtStuffTel.Text = "";
                                                        txtStuffMob.Text = "";
                                                            txtStuffFax.Text = "";
                                                                txtStuffSecondEmail.Text = "";
                                                                    txtStuffOrg.Text = "";
                                                                    Response.Redirect("http://localhost:49353/OmrokStuffDTable.aspx");
            }
        }
        catch (Exception ex)
        {
            litNotice.Text = ex.ToString();
        }
    }

    private void BindData()
    {
        XmlTextReader xmlReader = new XmlTextReader(Server.MapPath("~/App_Data/OmrokStuffInformation.xml"));
        xmlReader.Close();
    }
}