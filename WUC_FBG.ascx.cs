using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class WUC_FBG : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FBG_Doldur();
    }
    private void FBG_Doldur()
    {
        SqlDataAdapter adaptor1 = new SqlDataAdapter("SELECT * FROM TBL_KATEGORI_ANA", ConnectionTools.ConnDB);
        DataTable tablo1 = new DataTable();
        adaptor1.Fill(tablo1);
        Repeater1.DataSource = tablo1;
        Repeater1.DataBind();
    }
    protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        //Evet Bahsetmış oldugmuz gibi her bir kategori Bind edilecegi zaman bu evetn calısır.
        //Bu event'de o satıra ait bilgileri elde ederiz.
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            //Satir icerisinde arka planda ID tutmaya ıhtıyac duyduk bunun ıcın HiddendFieald Kullandık
            string KategoriID = (e.Item.FindControl("hiddenID") as HiddenField).Value;

            //string KategoriID = Request.QueryString["K_ANA_ID"]; //başka bir alt sayfadan geldiğinde kullanılıyor.

            //Her bir satırın icerisinde "repetAltKategori" Data Kontrolu bıraktık.Burda Amac Kategorı ID'sıne Gore alt Kategorileri bulup Bu data kontrolune bind etmek.
            Repeater rpdAlt = e.Item.FindControl("Repeater2") as Repeater;

            //Alt Kategorilere Tıklandıgı zaman Konular sayfasına gitmesi gerekiyor.Bunun için Bu event oluşturuldu LinkButtonu bu eventte kontrol edecegiz.
            rpdAlt.ItemCommand += new RepeaterCommandEventHandler(rpdAlt_ItemCommand);
            SqlConnection conn = new SqlConnection();
            conn = ConnectionTools.ConnDB;
            SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM TBL_KATEGORI_ALT WHERE K_ALT_KANAID=@ID", conn);
            adp.SelectCommand.Parameters.AddWithValue("@ID", KategoriID);
            DataTable tbl = new DataTable();
            adp.Fill(tbl);
            rpdAlt.DataSource = tbl;
            rpdAlt.DataBind();

        }
    }
    void rpdAlt_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            //string id = (e.Item.FindControl("lnkAltKategori") as LinkButton).CommandArgument;
            //Response.Redirect("Konular.aspx?ID=" + id);

        }
    }

    public string ReWriterPath(string K_ALT_ID, string K_ALT_ADI)
    {
        string Temp = "";
        //Bu kısımda çeşitli replace işlemleri yapacağız çünkü adres çubuğunda
        //geçerli olmayan karakterler karşımıza çıkacaktır Ör: ğşü# vs...
        //ve url'yi daha anlamlı hale getirmek için bunları replace etmeliyiz...
        Temp = K_ALT_ADI.ToLower();
        Temp = Temp.Replace("-", ""); Temp = Temp.Replace(" ", "-");
        Temp = Temp.Replace("\"", ""); Temp = Temp.Replace("/", "");
        Temp = Temp.Replace("(", ""); Temp = Temp.Replace(")", "");
        Temp = Temp.Replace("{", ""); Temp = Temp.Replace("}", "");
        Temp = Temp.Replace("%", ""); Temp = Temp.Replace("&", "");
        Temp = Temp.Replace("+", ""); Temp = Temp.Replace(".", "-");
        Temp = Temp.Replace("?", ""); Temp = Temp.Replace(",", "");
        Temp = Temp.Replace("ç", "c"); Temp = Temp.Replace("ğ", "g");
        Temp = Temp.Replace("ı", "i"); Temp = Temp.Replace("ö", "o");
        Temp = Temp.Replace("ş", "s"); Temp = Temp.Replace("ü", "u");
        return K_ALT_ID + "-" + Temp + ".html";
    }

}