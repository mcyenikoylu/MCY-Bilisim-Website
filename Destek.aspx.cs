using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TitleYukle();
    }
    private string Title_;
    private string Description_;
    private string Keywords_;
    private void TitleYukle()
    {
        //sayfanın adres yolunu alıyoruz.
        string SayfaAdresYolu = HttpContext.Current.Request.RawUrl;
        string[] SayfaAdiParcala = SayfaAdresYolu.Split("/".ToCharArray());
        string SayfaAdresi = SayfaAdiParcala[1]; //hosting için kullanılacak
        //string SayfaAdresi = SayfaAdiParcala[2]; //localhost için kullanılacak
        //tagları db'den çek
        string TitleStr = "SELECT TITLE,DESCRIPTION,KEYWORDS FROM TBL_SAYFA WHERE S_PAGENAME='" + SayfaAdresi + "'";
        SqlConnection cnn = new SqlConnection();
        cnn = ConnectionTools.ConnDB;
        cnn.Close();
        cnn.Open();
        SqlCommand cmd = new SqlCommand(TitleStr, cnn);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Title_ = dr["TITLE"].ToString();
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