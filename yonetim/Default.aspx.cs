using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetim_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            UserLoginControl();
        }
    }
    private void UserLoginControl()
    {
        if (Session["k_id"] != null)
        {
            
        }
        else
            Response.Redirect("Login.aspx");
    }
}