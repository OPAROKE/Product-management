using System;
using System.IO;
using System.Windows;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Net;
using System.Data;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Configuration;
using System.Data.SqlServerCe;
using System.Timers;
using System.Xml;

public partial class EmployeeManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSavedetail1_Click(object sender, EventArgs e)
    {
        try
        {
           /* if (txtEmpid.Text == "") { }
            if (txtFname.Text == "") { }
            if (txtMname.Text == "") { }
            if (txtLname.Text == "") { }
            if (txtDate.Text == "") { }
            if (cboGender.SelectedValue == "") { }
            if (txtHiredate.Text == "") { }
            if (txtAdrss1.Text == "") { }
            if (txtAddrss2.Text == "") { }
            if (txtEmail.Text == "") { }
            if (txtDeptid.Text == "") { }
            if (txtDeptname.Text == "") { }
            if (cboDeptsection.SelectedValue == "") { }
            if (txtSupervisor.Text == "") { } */
            if (txtEmpid.Text == "" && txtFname.Text == "" && txtMname.Text == "" && txtLname.Text == "" && txtDate.Text == "" && cboGender.SelectedValue == "" && txtHiredate.Text == "" && txtAdrss1.Text == "" && txtAddrss2.Text == "" && txtEmail.Text == "" && cboEmpCity.SelectedValue == "" && txtEmpZipcode.Text == "" && cboEmpState.SelectedValue == "" && cboEmpCountry.SelectedValue == "" && txtTel.Text == "" && txtMobile.Text == "" && txtDeptid.Text == "" && txtDeptname.Text == "" && cboDeptsection.SelectedValue == "" && txtSupervisor.Text == "")
            {
                lblNotification.Text = "...NULL VALUES NOT ACCEPTABLE !...";
            }
            else if (EmpPhotoUpload.PostedFile != null && txtEmpid.Text != null && txtFname.Text != null && txtMname.Text != null && txtLname.Text != null && txtDate.Text != null && cboGender.SelectedValue != null && txtHiredate.Text != null && txtAdrss1.Text != null && txtAddrss2.Text != null && txtEmail.Text != null && cboEmpCity.SelectedValue!=null && txtEmpZipcode.Text!=null && cboEmpState.SelectedValue!=null && cboEmpCountry.SelectedValue!=null && txtTel.Text!=null && txtMobile.Text!=null && txtDeptid.Text != null && txtDeptname.Text != null && cboDeptsection.SelectedValue != null && txtSupervisor.Text != null)
            {
                System.Xml.XmlDocument omrokEmpXml = new System.Xml.XmlDocument();
                omrokEmpXml.Load(Server.MapPath("~/App_Data/OmrokEmployeeManagementSystem.xml"));
                System.Xml.XmlNode omrokXMLemployeeNode = omrokEmpXml.DocumentElement.FirstChild;
                System.Xml.XmlElement xmlElement = omrokEmpXml.CreateElement("OmrokEmployeeInformation");

                string empPhotoname = Path.GetFileName(EmpPhotoUpload.PostedFile.FileName);
                EmpPhotoUpload.PostedFile.SaveAs(Server.MapPath("~/Employee photograph/") + empPhotoname);
                //Response.Redirect(Request.Url.AbsoluteUri);
                xmlElement.SetAttribute("EmployeePhoto", Server.HtmlEncode("~/Employee photograph/" + EmpPhotoUpload.FileName));
                xmlElement.SetAttribute("EmployeeId", Server.HtmlEncode(txtEmpid.Text));
                xmlElement.SetAttribute("Firstname", Server.HtmlEncode(txtFname.Text));
                xmlElement.SetAttribute("Midname", Server.HtmlEncode(txtMname.Text));
                xmlElement.SetAttribute("Lastname", Server.HtmlEncode(txtLname.Text));
                xmlElement.SetAttribute("Birthdate", Server.HtmlEncode(txtDate.Text));
                xmlElement.SetAttribute("Sex", Server.HtmlEncode(cboGender.SelectedValue));
                xmlElement.SetAttribute("Hiringdate", Server.HtmlEncode(txtHiredate.Text));
                xmlElement.SetAttribute("Address", Server.HtmlEncode(txtAdrss1.Text));
                xmlElement.SetAttribute("Addres", Server.HtmlEncode(txtAddrss2.Text));
                xmlElement.SetAttribute("Email", Server.HtmlEncode(txtEmail.Text));
                xmlElement.SetAttribute("City", Server.HtmlEncode(cboEmpCity.SelectedValue));
                xmlElement.SetAttribute("ZipCode", Server.HtmlEncode(txtEmpZipcode.Text));
                xmlElement.SetAttribute("State", Server.HtmlEncode(cboEmpState.SelectedValue));
                xmlElement.SetAttribute("Country", Server.HtmlEncode(cboEmpCountry.SelectedValue));
                xmlElement.SetAttribute("Telephone", Server.HtmlEncode(txtTel.Text));
                xmlElement.SetAttribute("Mobile", Server.HtmlEncode(txtMobile.Text));
                xmlElement.SetAttribute("DepartmentId", Server.HtmlEncode(txtDeptid.Text));
                xmlElement.SetAttribute("DeparmentName", Server.HtmlEncode(txtDeptname.Text));
                xmlElement.SetAttribute("DepartmentSection", Server.HtmlEncode(cboDeptsection.Text));
                xmlElement.SetAttribute("Fax", Server.HtmlEncode(txtSupervisor.Text));
                
                omrokEmpXml.DocumentElement.InsertBefore(xmlElement, omrokXMLemployeeNode);

                omrokEmpXml.Save(Server.MapPath("~/App_Data/OmrokEmployeeManagementSystem.xml"));

                BindData();

                lblNotification.Text = "Omrok DYNAMICS Employee Information saved !";
                txtEmpid.Text = "";
                txtFname.Text = "";
                        txtMname.Text = "";
                            txtLname.Text  = "";
                                txtDate.Text  = "";
                                    cboGender.SelectedValue  = "";
                                        txtHiredate.Text  = "";
                                            txtAdrss1.Text  = "";
                                                txtAddrss2.Text  = "";
                                                    txtEmail.Text  = "";
                                                        cboEmpCity.SelectedValue = "";
                                                            txtEmpZipcode.Text = "";
                                                                cboEmpState.SelectedValue = "";
                                                                    cboEmpCountry.SelectedValue = "";
                                                                        txtTel.Text = "";
                                                                            txtMobile.Text = "";
                                                                                txtDeptid.Text  = "";
                                                                                    txtDeptname.Text  = "";
                                                                                        cboDeptsection.SelectedValue = ""; 
                                                                                            txtSupervisor.Text = "";
                Response.Redirect("~/DisplayOmrokEmployeeProfile.aspx");
            }
        }
        catch (Exception ex)
        {
            lblNotification.Text = ex.ToString();
        }
    }
    private void BindData()
    {
        XmlTextReader xmlReader = new XmlTextReader(Server.MapPath("~/App_Data/OmrokEmployeeManagementSystem.xml"));
        xmlReader.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}