using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonetim_MPY1 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_kullaniciAdi.Text = Session["k_adi"].ToString();
        ControlPanelBildirimleri();
        YeniBildirimSay();
    }

    private void ControlPanelBildirimleri()
    { 
        //mcy bilişim veritabanından gelen müşteri bildirimleri.
        SqlDataAdapter adaptor1 = new SqlDataAdapter("SELECT TOP 10 * FROM TBL_CP_BILDIRIMLER WHERE CPB_DURUM=1 ORDER BY CPB_ID DESC", ConnectionTools.MCYConnDB);
        DataTable tablo1 = new DataTable();
        adaptor1.Fill(tablo1);
        Repeater1.DataSource = tablo1;
        Repeater1.DataBind();
    }

    private void YeniBildirimSay()
    {
        SqlDataAdapter adaptor1 = new SqlDataAdapter("SELECT * FROM TBL_CP_BILDIRIMLER WHERE CPB_DURUM=1", ConnectionTools.MCYConnDB);
        DataTable tablo1 = new DataTable();
        adaptor1.Fill(tablo1);
        lbl_okunmamisBildirimAdedi.Text = tablo1.Rows.Count.ToString();
    }
}
