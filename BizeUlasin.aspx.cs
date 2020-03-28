using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TitleYukle();
    }
    private void MailGonder()
    {
        string GonderenAdSoyad; string GonderenEmail; string AliciEmail; string GonderenSirket;
        string AliciAdSoyad; string konu; bool HtmlFormat; string MailIcerigi; string SmtpSunucu;
        string GonderimiYapacakEmail; string GonderimiYapacakEmailSifresi;
        GonderenAdSoyad = txt_adisoyadi.Text;
        GonderenSirket = txt_sirket.Text;
        GonderenEmail = txt_eposta.Text;
        GonderimiYapacakEmail = "webmaster@mcybilisim.com";
        GonderimiYapacakEmailSifresi = "123456";
        AliciAdSoyad = "MCY Bilişim Teknolojileri";
        AliciEmail = "info@mcybilisim.com";
        konu = txt_konu.Text;
        MailIcerigi = "Adı Soyadı : " + txt_adisoyadi.Text + "<br>" +
            "Şirket : " + txt_sirket.Text + "<br>" +
            "E-Posta : " + txt_eposta.Text + "<br>" +
            "Konu : " + txt_konu.Text + "<br>" +
            "Mesaj : " + txt_mesaj.Text;
        SmtpSunucu = "mail.mcybilisim.com";

        System.Net.Mail.MailAddress gonderen = new System.Net.Mail.MailAddress(GonderenEmail, GonderenAdSoyad);
        System.Net.Mail.MailAddress alan = new System.Net.Mail.MailAddress(AliciEmail, AliciAdSoyad);
        System.Net.Mail.MailMessage eposta = new System.Net.Mail.MailMessage(gonderen, alan);
        eposta.IsBodyHtml = true;
        eposta.Subject = konu;
        eposta.Body = MailIcerigi;
        System.Net.NetworkCredential auth = new System.Net.NetworkCredential(GonderimiYapacakEmail, GonderimiYapacakEmailSifresi);
        System.Net.Mail.SmtpClient SMTP = new System.Net.Mail.SmtpClient();
        SMTP.Host = SmtpSunucu;
        SMTP.Timeout = 50000;
        SMTP.Port = 587;
        //SMTP.EnableSsl = true;
        //SMTP.UseDefaultCredentials = false;
        //SMTP.Credentials = auth;
        SMTP.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;

        try
        {
            SMTP.Send(eposta);
            lbl_bilgilendirme.Visible = true;
            lbl_bilgilendirme.Text = ("Mesajınız bize ulaşmıştır. En kısa sürede size geri dönüş yapılacaktır. Teşekkür ederiz.");
            //txt_sirket.Text = "";
            //txt_mesaj.Text = "";
            //txt_konu.Text = "";
            //txt_eposta.Text = "";
            //txt_adisoyadi.Text = "";
        }
        catch (Exception ex)
        {
            lbl_bilgilendirme.Visible = true;
            lbl_bilgilendirme.Text = ("Mesajınız Gönderilemedi, Sebebi: " + ex.Message);
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        MailGonder();
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