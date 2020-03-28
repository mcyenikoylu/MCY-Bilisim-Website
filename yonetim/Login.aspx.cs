using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void UpdateTime()
    {
        if (Session["k_id"] != null)
        {
            SqlCommand update = new SqlCommand("UPDATE TBL_KULLANICI SET KL_SON_GIRIS = ’" + DateTime.Now.AddMinutes(30).ToString() + "’ WHERE KL_ID = ’" + Session["k_id"].ToString() + "’", ConnectionTools.ConnDB);
            try
            {
                ConnectionTools.ConnDB.Open();
                update.ExecuteNonQuery();
                ConnectionTools.ConnDB.Close();
            }
            catch (Exception ex)
            {
                lbl_errortext.Text = ex.Message;
            }
            ConnectionTools.ConnDB.Close();
        }
    }
    private void Login_()
    {
        SqlDataAdapter finduser = new SqlDataAdapter("SELECT KL_ID,KL_ADI,KL_KULLANICI_ADI,KL_SIFRE,KL_YETKI FROM TBL_KULLANICI WHERE KL_KULLANICI_ADI = '" + txt_kullanici.Text + "' AND KL_SIFRE = '" + txt_parola.Text + "' AND KL_YETKI=1 ", ConnectionTools.ConnDB); //  --- AND K_F_ID='" + Tools.FIRMAID + "'
        DataTable dt = new DataTable();
        finduser.Fill(dt);
        if (dt.Rows.Count != 1) // Giriş Başarısız.
        {
            lbl_errortext.Text = "Hatalı giriş yaptınız.";
        }
        else
        {
            Session["k_id"] = dt.Rows[0]["KL_ID"].ToString();
            Session["k_adi"] = dt.Rows[0]["KL_ADI"].ToString();
            Session.Timeout = 30;
            UpdateTime();
            Response.Redirect("Default.aspx");

            //int id_yetki = Int32.Parse(dt.Rows[0]["K_YETKI"].ToString());
            //if (id_yetki == 2) //yetkisi 2 numaralı normal kullanıcı
            //{
            //    Response.Redirect("Default.aspx");
            //}
            //if (id_yetki == 1) //yetkisi 1 numaralı yönetici kullanıcı
            //{
            //    Response.Redirect("Yonetim.aspx");
            //}

        }
        ConnectionTools.ConnDB.Close();
    }
    protected void ib_sisteme_giris_Click(object sender, ImageClickEventArgs e)
    {
        Login_();
        UpdateTime();
    }
}