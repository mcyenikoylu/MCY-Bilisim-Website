using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Threading;
using CKFinder;
using CKEditor;

public partial class yonetim_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Thread.Sleep(5000); //sayfayı 5 saniye bekletip öyle açıyor.
        if (!IsPostBack)
        {
            UserLoginControl(); //kullanıcı bilgilerini kontrol ediyorum.
            listbox_load();
        }
        mesaj_basari.Style.Add("display", "none");
        mesaj_bilgi.Style.Add("display", "none");
        mesaj_dikkat.Style.Add("display", "none");
        mesaj_hata.Style.Add("display", "none");

        // Page load girdik Using CKFinder ekledik sireda FileBrowser oluşturalım.
        FileBrowser flp = new FileBrowser(); //FileBrowser mizi olusdurduk ckFinderimize dosya yolunu bulalım şimdi
        flp.BasePath = "../ckfinder/";// BasePath ckfinderin nerde oldugunu söyleriz yanlız localde noktayı 
        //kaldırın flp.BasePath = "/ckfinder/"; son olarak hangi ckfinderin hangi CKEditörü çalıştıracagını söyleyecegiz bunun için FileBrowserin SetupCKEditor methodunu kullanacagız
        flp.SetupCKEditor(CKEditorControl1);// SetupCKEditor bizden CKEditörün Id sini istedi bizde verdik
        //------------------------------------------------------------------------------------------
        // Ve sirada ckfinderin içine girip kücük bir ayar yapalım config.ascx içine girip
        //  public override bool CheckAuthentication()
        //{
        //return false;  bu bölümü true yapalım
        //}  
        // ve en önemlisi localde  calışmasını istiyorsanuz  config.ascx  dosyasının içinde  BaseUrl = "/ckfinder/userfiles/"; yazısını bulu  tilda koyunuz  bu şekilde ( BaseUrl = "~/ckfinder/userfiles/";)
    }
    private void UserLoginControl()
    {
        if (Session["k_id"] != null)
        {
            
        }
        else
            Response.Redirect("Login.aspx");
    }
    private void listbox_load()
    {
        lb_ana_kategori.Items.Clear();
        lb_ana_kategori_id.Items.Clear();
        SqlCommand commlistbox = new SqlCommand("SELECT K_ANA_ID, K_ANA_ADI FROM TBL_KATEGORI_ANA", ConnectionTools.ConnDB);
        commlistbox.Connection.Open();
        SqlDataReader listboxread =
        commlistbox.ExecuteReader();
        while (listboxread.Read())
        {
            lb_ana_kategori_id.Items.Add(listboxread[0].ToString());
            lb_ana_kategori.Items.Add(listboxread[1].ToString());
        }
        commlistbox.Connection.Close();
    }
    string anaKategoriID;
    string altKategoriID;
    protected void lb_ana_kategori_SelectedIndexChanged(object sender, EventArgs e)
    {
        //alanları boşalt.
        anaKategoriID = "";
        lb_alt_kategori.Items.Clear();
        lb_alt_kategori_id.Items.Clear();

        //listbox'dan alt kategorileri doldur.
        lb_ana_kategori_id.SelectedIndex = lb_ana_kategori.SelectedIndex;

        //seçilen ana kategori id 'sini al.
        anaKategoriID = lb_ana_kategori_id.SelectedItem.ToString();
        txt_ana_kategori_id.Text = anaKategoriID;
        //listbox, alt kategoriyi doldur.
        SqlCommand commlistbox = new SqlCommand("SELECT K_ALT_ID, K_ALT_ADI FROM TBL_KATEGORI_ALT WHERE K_ALT_KANAID='" + anaKategoriID + "'", ConnectionTools.ConnDB);
        commlistbox.Connection.Open();
        SqlDataReader listboxread =
        commlistbox.ExecuteReader();
        while (listboxread.Read())
        {
            lb_alt_kategori_id.Items.Add(listboxread[0].ToString());
            lb_alt_kategori.Items.Add(listboxread[1].ToString());
        }
        commlistbox.Connection.Close();
    }
    protected void lb_alt_kategori_SelectedIndexChanged(object sender, EventArgs e)
    {
        altKategoriID = "";
        lb_alt_kategori_id.SelectedIndex = lb_alt_kategori.SelectedIndex;
        altKategoriID = lb_alt_kategori_id.SelectedItem.ToString();
        txt_alt_kategori_id.Text = altKategoriID;
        String vericek = "SELECT * FROM TBL_KATEGORI_ALT WHERE K_ALT_ID = '" + altKategoriID + "'";
        SqlCommand comm = new SqlCommand(vericek, ConnectionTools.ConnDB);
        comm.Parameters.AddWithValue("K_ALT_ADI", txt_baslik.Text).SqlDbType = SqlDbType.NVarChar;
        comm.Parameters.AddWithValue("K_ALT_ICERIK", CKEditorControl1.Text).SqlDbType = SqlDbType.NVarChar;
        comm.Parameters.AddWithValue("DESCRIPTION", txt_description.Text).SqlDbType = SqlDbType.NVarChar;
        comm.Parameters.AddWithValue("KEYWORDS", txt_keywords.Text).SqlDbType = SqlDbType.NVarChar;
        comm.Parameters.AddWithValue("K_ALT_DURUM", ddl_yayin_durum.SelectedValue).SqlDbType = SqlDbType.NVarChar;
        ConnectionTools.ConnDB.Open();
        SqlDataReader verioku = comm.ExecuteReader();
        try
        {
            while (verioku.Read())
            {
                txt_baslik.Text = verioku["K_ALT_ADI"].ToString();
                CKEditorControl1.Text = verioku["K_ALT_ICERIK"].ToString();
                txt_description.Text = verioku["DESCRIPTION"].ToString();
                txt_keywords.Text = verioku["KEYWORDS"].ToString();
                ddl_yayin_durum.SelectedValue = verioku["K_ALT_DURUM"].ToString();
            }
        }
        finally
        {
            verioku.Close();
            ConnectionTools.ConnDB.Close();
        }
    }
    private void Guncelle()
    {
        String VerileriGuncelle = "UPDATE TBL_KATEGORI_ALT SET K_ALT_ADI=@K_ALT_ADI,K_ALT_ICERIK=@K_ALT_ICERIK,DESCRIPTION=@DESCRIPTION,KEYWORDS=@KEYWORDS,K_ALT_DURUM=@K_ALT_DURUM WHERE K_ALT_ID=@K_ALT_ID";
        SqlCommand cmd = new SqlCommand(VerileriGuncelle, ConnectionTools.ConnDB);
        cmd.Parameters.AddWithValue("@K_ALT_ID", txt_alt_kategori_id.Text).SqlDbType = SqlDbType.NVarChar;
        cmd.Parameters.AddWithValue("@K_ALT_ADI", txt_baslik.Text).SqlDbType = SqlDbType.NVarChar;
        cmd.Parameters.AddWithValue("@K_ALT_ICERIK", CKEditorControl1.Text).SqlDbType = SqlDbType.NVarChar;
        cmd.Parameters.AddWithValue("@DESCRIPTION", txt_description.Text).SqlDbType = SqlDbType.NVarChar;
        cmd.Parameters.AddWithValue("@KEYWORDS", txt_keywords.Text).SqlDbType = SqlDbType.NVarChar;
        cmd.Parameters.AddWithValue("@K_ALT_DURUM", ddl_yayin_durum.SelectedValue).SqlDbType = SqlDbType.NVarChar;
        try
        {
            ConnectionTools.ConnDB.Open();
            cmd.ExecuteNonQuery();
            mesaj_basari.Style.Add("display", "block");
        }
        catch (Exception hata)
        {
            mesaj_hata.Style.Add("display", "block");
            lbl_hata.Text = hata.ToString();
        }
        finally
        {
            ConnectionTools.ConnDB.Close();
        }
    }
    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        Guncelle();
    }
}