using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TitleYukle();
        Icerik_Getir();
    }

    private void Icerik_Getir()
    {
        string AnaKategoriID = Request.QueryString["K_ALT_ID"].ToString();
        String vericek = "SELECT * FROM TBL_KATEGORI_ALT WHERE K_ALT_ID='" + AnaKategoriID + "'";
        SqlCommand comm = new SqlCommand(vericek, ConnectionTools.ConnDB);
        comm.Parameters.AddWithValue("K_ALT_ADI", lbl_Baslik.Text).SqlDbType = SqlDbType.NVarChar;
        comm.Parameters.AddWithValue("K_ALT_ICERIK", ltrl_Icerik.Text).SqlDbType = SqlDbType.NVarChar;
        //ConnectionTools.ConnDB.Open();
        SqlDataReader verioku = comm.ExecuteReader();
        try
        {
            while (verioku.Read())
            {
                lbl_Baslik.Text = verioku["K_ALT_ADI"].ToString();
                ltrl_Icerik.Text = verioku["K_ALT_ICERIK"].ToString();
            }
        }
        finally
        {
            verioku.Close();
            ConnectionTools.ConnDB.Close();
        }
    }

    private string Title_;
    private string Description_;
    private string Keywords_;
    private void TitleYukle()
    {
        //Alt kategori ID 'si alınıyor.
        string KategoriID = Request.QueryString["K_ALT_ID"];
        //tagları db'den çek
        string TitleStr = "SELECT * FROM TBL_KATEGORI_ALT WHERE K_ALT_ID='" + KategoriID + "'";
        SqlConnection cnn = new SqlConnection();
        cnn = ConnectionTools.ConnDB;
        cnn.Close();
        cnn.Open();
        SqlCommand cmd = new SqlCommand(TitleStr, cnn);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Title_ = dr["K_ALT_ADI"].ToString();
            Description_ = dr["DESCRIPTION"].ToString();
            Keywords_ = dr["KEYWORDS"].ToString();
        }
        dr.Close();

        //description tagını al
        HtmlMeta MetaDiscription = new HtmlMeta();
        MetaDiscription.Attributes.Add("name", "DESCRIPTION");
        MetaDiscription.Attributes.Add("content", Description_);
        Header.Controls.Add(MetaDiscription);
        //keywords tagını al
        HtmlMeta MetaKeywords = new HtmlMeta();
        MetaKeywords.Attributes.Add("name", "KEYWORDS");
        MetaKeywords.Attributes.Add("content", Keywords_);
        Header.Controls.Add(MetaKeywords);
        //title tagını al
        Page.Title = Title_.ToString();
    }


}