using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; 
using System.Data.SqlClient;
using System.Configuration;

public partial class DisplayOmrokProductInformation : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["masterConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        /*
        String SQL = "SELECT omrokProd_Title FROM OmrokProductData_tbl";
        SqlDataAdapter Adpt = new SqlDataAdapter(SQL, connection);
        DataSet login = new DataSet();
        Adpt.Fill(login);

        foreach (DataRow dr in login.Tables[0].Rows)
        {
            //Label1.Text = login.Tables[0].Rows[1]["omrokProd_Title"].ToString();
        }
        */
    }
    protected void btnomrokPurchase_Click(object sender, EventArgs e)
    {

    }
}