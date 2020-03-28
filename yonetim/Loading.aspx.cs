using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetim_Loading : System.Web.UI.Page
{
    protected string url;
    protected void Page_Load(object sender, EventArgs e)
    {
        url = Request.QueryString["url"];
    }
}