<%@ Application Language="C#" %>

<script runat="server">
    void Application_BeginRequest(Object sender, EventArgs e)
    {
        //İşlemleri yapacağımız sayfanın url bilgisini alıyoruz...
        //Ör: /Makale/19-il-ilce-semt-veritabani-sql-server-2005.aspx      
        string DosyaYolu = Request.RawUrl;
        //IndexOf ile url bilgisinde Makale klasörünün geçip geçmediğini kontrol ediyoruz,
        //Bu kontrolü yapmazsak tüm dosyalarda ReWriter işlemi yapmaya çalışacaktır...
        //if (DosyaYolu.IndexOf("/Makale/") != -1)
        //{
            //Bu kısımda uzantıyı html olarak belirledik, isterseniz aspx, rss, xml gibi
            //uzantılarıda kullanabilirsiniz. Hatta kendi belirlediğiniz uzantılarıda yazabilirsiniz.
            if (System.IO.Path.GetExtension(DosyaYolu) == ".html")
            {
                //Bütün kontrolleri aştıktan sonra bu kısımda MakaleID 'sini alacağız...
                //Split ile url'yi dize haline getirip 19 sayısına ulaşacağız.
                string[] path = System.IO.Path.GetFileName(DosyaYolu).Split('-');
                //İlk parametrede gerçek sayfa pathini, daha sonra MakaleID'yi gönderiyoruz...
                Context.RewritePath("~/Icerik.aspx", "", "K_ALT_ID=" + path[0], true);
            }
        //}
    }
</script>
