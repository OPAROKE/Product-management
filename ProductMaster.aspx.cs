using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;

public partial class ProductMaster : System.Web.UI.Page
{
    //Connect omrok product data information
    System.Xml.XmlDocument omrokProdXml = new System.Xml.XmlDocument();
    SqlConnection omrokConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["masterConnectionString"].ConnectionString);
    SqlCommand omrokcmd = new SqlCommand(); // define command to execute omrok connection

    protected void Page_Load(object sender, EventArgs e)
    {
        /*
        txtSerialcode.Text = "";
        txtProdTitle.Text = "";
        cboCateg.SelectedValue = "";
        cboBrand.SelectedValue = "";
        cboCntryOfOrigin.SelectedValue = "";
        txtManudate.Text = "";
        txtManuCode.Text = "";
        txtExpdate.Text = "";
        txtSupplier.Text = "";
        txtAuthor.Text = "";
        txtWholesalePrice.Text = "";
        txtRetailPrice.Text = "";
        txtShipCost.Text = "";
        txtVat.Text = "";
        txtProdDiscount.Text = "";
        */
    }

    protected void btnSaveProduct_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtSerialcode.Text == null) { txtSerialcode.BorderColor = System.Drawing.Color.Red; }
            if (txtProdTitle.Text == null) { txtProdTitle.BorderColor = System.Drawing.Color.Red; }
            if (cboCateg.SelectedValue == null) { cboCateg.BorderColor = System.Drawing.Color.Red; }
            if (cboBrand.SelectedValue == null) { cboBrand.BorderColor = System.Drawing.Color.Red; }
            if (cboCntryOfOrigin.SelectedValue == null) { cboCntryOfOrigin.BorderColor = System.Drawing.Color.Red; }
            if (txtManudate.Text == null) { txtManudate.BorderColor = System.Drawing.Color.Red; }
            if (txtManuCode.Text == null) { txtManuCode.BorderColor = System.Drawing.Color.Red; }
            if (txtExpdate.Text == null) { txtExpdate.BorderColor = System.Drawing.Color.Red; }
            if (txtSupplier.Text == null) { txtSupplier.BorderColor = System.Drawing.Color.Red; }
            if (txtAuthor.Text == null) { txtAuthor.BorderColor = System.Drawing.Color.Red; }
            if (txtWholesalePrice.Text == null) { txtWholesalePrice.BorderColor = System.Drawing.Color.Red; }
            if (txtRetailPrice.Text == null) { txtRetailPrice.BorderColor = System.Drawing.Color.Red; }
            if (txtShipCost.Text == null) { txtShipCost.BorderColor = System.Drawing.Color.Red; }
            if (txtVat.Text == null) { txtVat.BorderColor = System.Drawing.Color.Red; } 
            if (txtSerialcode.Text == "" && txtProdTitle.Text == "" && cboCateg.SelectedValue == "" && cboBrand.SelectedValue == "" && cboCntryOfOrigin.SelectedValue == "" && txtManudate.Text == "" && txtManuCode.Text == "" && txtExpdate.Text == "" && txtSupplier.Text == "" && txtAuthor.Text == "" && txtWholesalePrice.Text == "" && txtRetailPrice.Text == "" && txtShipCost.Text == "" && txtVat.Text == "" && txtProdDiscount.Text == "")
            {
                lblNotice.Text = "Sorry! Check if all fields are entered else contact Admin!";
            }
            else if (UploadProductImage.PostedFile != null && txtSerialcode.Text != null && txtProdTitle.Text != null && cboCateg.SelectedValue != null && cboBrand.SelectedValue != null && cboCntryOfOrigin.SelectedValue != null && txtManudate.Text != null && txtManuCode.Text != null && txtExpdate.Text != null && txtSupplier.Text != null && txtAuthor.Text != null && txtWholesalePrice.Text != null && txtRetailPrice.Text != null && txtShipCost.Text != null && txtVat.Text != null && txtProdDiscount.Text != null)
            {                
                omrokProdXml.Load(Server.MapPath("~/App_Data/OmrokProductmanagementSystem.xml"));
                System.Xml.XmlNode omrokXMLProductNode = omrokProdXml.DocumentElement.FirstChild;
                System.Xml.XmlElement xmlElement = omrokProdXml.CreateElement("OmrokProductInformation");

                string empPhotoname = Path.GetFileName(UploadProductImage.PostedFile.FileName);
                UploadProductImage.PostedFile.SaveAs(Server.MapPath("~/Gallery/Product gallery/") + empPhotoname);
                //Response.Redirect(Request.Url.AbsoluteUri);
                xmlElement.SetAttribute("ProductImage", Server.HtmlEncode("~/Gallery/Product gallery/") + UploadProductImage.FileName);
                xmlElement.SetAttribute("ProductID", Server.HtmlEncode(txtSerialcode.Text));
                xmlElement.SetAttribute("Productname", Server.HtmlEncode(txtProdTitle.Text));
                xmlElement.SetAttribute("Category", Server.HtmlEncode(cboCateg.SelectedValue));
                xmlElement.SetAttribute("Brand", Server.HtmlEncode(cboBrand.SelectedValue));
                xmlElement.SetAttribute("CountryOfOrigin", Server.HtmlEncode(cboCntryOfOrigin.SelectedValue));
                xmlElement.SetAttribute("ManufactureDat", Server.HtmlEncode(txtManudate.Text));
                xmlElement.SetAttribute("ManufactureCode", Server.HtmlEncode(txtManuCode.Text));
                xmlElement.SetAttribute("ExpiryDate", Server.HtmlEncode(txtExpdate.Text));
                xmlElement.SetAttribute("Supplier", Server.HtmlEncode(txtSupplier.Text));
                xmlElement.SetAttribute("Author", Server.HtmlEncode(txtAuthor.Text));
                xmlElement.SetAttribute("WholesalePrice", Server.HtmlEncode(txtWholesalePrice.Text));
                xmlElement.SetAttribute("RetailPrice", Server.HtmlEncode(txtRetailPrice.Text));
                xmlElement.SetAttribute("ShippingCost", Server.HtmlEncode(txtShipCost.Text));
                xmlElement.SetAttribute("VAT", Server.HtmlEncode(txtVat.Text));
                xmlElement.SetAttribute("ProductDiscont", Server.HtmlEncode(txtProdDiscount.Text));
                omrokProdXml.DocumentElement.InsertBefore(xmlElement, omrokXMLProductNode);

                omrokProdXml.Save(Server.MapPath("~/App_Data/OmrokProductmanagementSystem.xml"));

                BindData();
                /*
                string omrokProd_code = txtSerialcode.Text;
                string omrokProd_Title = txtProdTitle.Text;
                string omrokProd_Categ = cboCateg.SelectedValue;
                string omrokProd_Brand = cboBrand.SelectedValue;
                string omrokProd_CntryOfOrigin = cboCntryOfOrigin.SelectedValue;
                string omrokProd_Manudate = txtManudate.Text;
                string omrokProd_ManuCode = txtManuCode.Text;
                string omrokProd_Expdate = txtExpdate.Text;
                string omrokProd_Supplier = txtSupplier.Text;
                string omrokProd_Author = txtAuthor.Text;
                string omrokProd_WholesalePrice = txtWholesalePrice.Text;
                string omrokProd_RetailPrice = txtRetailPrice.Text;
                string omrokProd_ShipCost = txtShipCost.Text;
                string omrokProd_Vat = txtVat.Text;
                string omrokProd_Discount = txtProdDiscount.Text;

                omrokConnect.Open();
                // Create object of SqlCommand class
                omrokcmd.Connection = omrokConnect; //Pass the connection object to Command
                omrokcmd.CommandType = CommandType.StoredProcedure; // use stored procedure.
                omrokcmd.CommandText = "InsertOmrokProductData_tbl"; //Stored Procedure Name

                //Add parameters and call values from the assigned fron end objects
                omrokcmd.Parameters.Add("@omrokProd_code", SqlDbType.NVarChar).Value = omrokProd_code;
                omrokcmd.Parameters.Add("@omrokProd_Title", SqlDbType.NVarChar).Value = omrokProd_Title;
                omrokcmd.Parameters.Add("@omrokProd_Categ", SqlDbType.NVarChar).Value = omrokProd_Categ;
                omrokcmd.Parameters.Add("@omrokProd_Brand", SqlDbType.NVarChar).Value = omrokProd_Brand;
                omrokcmd.Parameters.Add("@omrokProd_CntryOfOrigin", SqlDbType.NVarChar).Value = omrokProd_CntryOfOrigin;
                omrokcmd.Parameters.Add("@omrokProd_Manudate", SqlDbType.Date).Value = omrokProd_Manudate;
                omrokcmd.Parameters.Add("@omrokProd_ManuCode", SqlDbType.NVarChar).Value = omrokProd_ManuCode;
                omrokcmd.Parameters.Add("@omrokProd_Expdate", SqlDbType.Date).Value = omrokProd_Expdate;
                omrokcmd.Parameters.Add("@omrokProd_Supplier", SqlDbType.NVarChar).Value = omrokProd_Supplier;
                omrokcmd.Parameters.Add("@omrokProd_Author", SqlDbType.NVarChar).Value = omrokProd_Author;
                omrokcmd.Parameters.Add("@omrokProd_WholesalePrice", SqlDbType.NVarChar).Value = omrokProd_WholesalePrice;
                omrokcmd.Parameters.Add("@omrokProd_RetailPrice", SqlDbType.NVarChar).Value = omrokProd_RetailPrice;
                omrokcmd.Parameters.Add("@omrokProd_ShipCost", SqlDbType.NVarChar).Value = omrokProd_ShipCost;
                omrokcmd.Parameters.Add("@omrokProd_Vat", SqlDbType.NVarChar).Value = omrokProd_Vat;
                omrokcmd.Parameters.Add("@omrokProd_Discount", SqlDbType.NVarChar).Value = omrokProd_Discount;

                omrokcmd.ExecuteNonQuery();
                */
                lblNotice.Text = "Product Info Saved !";                

                txtSerialcode.Text = "";
                txtProdTitle.Text = "";
                cboCateg.SelectedValue = "" ;
                cboBrand.SelectedValue = "" ;
                cboCntryOfOrigin.SelectedValue = "";
                txtManudate.Text = "";
                txtManuCode.Text = "";
                txtExpdate.Text = "";
                txtSupplier.Text = "";
                txtAuthor.Text = "";
                txtWholesalePrice.Text = "";
                txtRetailPrice.Text = "";
                txtShipCost.Text = "";
                txtVat.Text = "";
                txtProdDiscount.Text = "";
                Response.Redirect("~/DisplayOmrokProductInformation.aspx");                
            }
        }
        catch (Exception ex)
        {
            lblNotice.Text = ex.ToString();
        }
        finally
        {
            //omrokConnect.Close();
        }
    }
    private void BindData()
    {
        XmlTextReader xmlReader = new XmlTextReader(Server.MapPath("~/App_Data/OmrokProductmanagementSystem.xml"));
        xmlReader.Close();
    }

    protected void UploadProductImage_Load(object sender, EventArgs e)
    {
        ProductImage.ImageUrl = UploadProductImage.FileName.ToString();
    }
}