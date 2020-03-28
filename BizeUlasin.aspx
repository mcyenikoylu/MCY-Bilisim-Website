<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.master" AutoEventWireup="true" CodeFile="BizeUlasin.aspx.cs" Inherits="Default2" %>
<%@ Register Src="~/WUC_Head.ascx" TagName="WUC_Head" TagPrefix="WUC1" %>
<%@ Register Src="~/WUC_Menu.ascx" TagName="WUC_Menu" TagPrefix="WUC2" %>
<%@ Register Src="~/WUC_FBG.ascx" TagName="WUC_FBG" TagPrefix="WUC3" %>
<%@ Register Src="~/WUC_Footer.ascx" TagName="WUC_Footer" TagPrefix="WUC4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Head" Runat="Server">
    <WUC1:WUC_Head ID="WUC_Head" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH_Menu" Runat="Server">
    <WUC2:WUC_Menu ID="WUC_Menu" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPH_Slide" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPH_Body" Runat="Server">
<div class="body_resize">
    <div class="body">
    <div class="body_bg">
    <h3>Bize Ulaşın</h3>
    <div class="left">
    <h4>İletişim Formu</h4>
    <p>
        Firmamız hakkında soru, öneri ve görüşlerinizi bize bildirebilirsiniz. Ürünlerimiz hakkında detaylı 
        gibi için lütfen iletişim formumuzdan bize yazınız. En kısa zamanda müşteri temsilcilerimiz size 
        konu hakkında geri dönüş yapacaklardır. Bizi tercih ettğiniz için teşekkür ederiz. 
    </p>
    <p>&nbsp;</p>
    <div id="contactform">
            <ol>
              <li>
                <label for="name">Ad, Soyad <span class="red">*</span></label>
                  <asp:TextBox ID="txt_adisoyadi" runat="server" CssClass="text"></asp:TextBox>
              </li>
              <li>
                <label for="email">E-Posta Adresi <span class="red">*</span></label>
                <asp:TextBox ID="txt_eposta" runat="server" CssClass="text"></asp:TextBox>
              </li>
              <li>
                <label for="company">Firma Adı </label>
                <asp:TextBox ID="txt_sirket" runat="server" CssClass="text"></asp:TextBox>
              </li>
              <li>
                <label for="subject">Konu Başlığı</label>
                <asp:TextBox ID="txt_konu" runat="server" CssClass="text"></asp:TextBox>
              </li>
              <li>
                <label for="message">Mesaj İçeriği <span class="red">*</span></label>
                <asp:TextBox ID="txt_mesaj" runat="server" CssClass="text" TextMode="MultiLine"></asp:TextBox>
              </li>
              <li class="buttons">
                  <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/send.gif" 
                      CssClass="send" onclick="ImageButton1_Click" />
                  <asp:Label ID="lbl_bilgilendirme" runat="server" Text=""></asp:Label>
                <div class="clr"></div>
              </li>
          </ol>
      </div>
</div>
<div class="right">
        <h4>İletişim Bilgilerimiz</h4>
        <div class="bg"></div>
        <p>
            <strong>Adres :</strong> Marmara Mah. Hürriyet Bulv. 1. Sokak No:3/B Yakuplu Beylikdüzü İstanbul <br />
            <strong>Telefon :</strong> (0212) 876 45 55 <br />
            <strong>E-Posta :</strong> info@mcybilisim.com
        </p>
        <p>&nbsp;</p>

        <h4>Ulaşım &amp; Kroki</h4>
        <div class="bg"></div>
        <div><iframe width="300" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?hl=tr&amp;georestrict=input_srcid:ca2c5e5200866734&amp;ie=UTF8&amp;view=map&amp;cid=11153931150206813893&amp;q=MCY+Bili%C5%9Fim+Teknolojileri&amp;hq=MCY+Bili%C5%9Fim+Teknolojileri&amp;hnear=&amp;t=m&amp;vpsrc=6&amp;ll=40.982943,28.672471&amp;spn=0.00486,0.006437&amp;z=16&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="http://maps.google.com/maps?hl=tr&amp;georestrict=input_srcid:ca2c5e5200866734&amp;ie=UTF8&amp;view=map&amp;cid=11153931150206813893&amp;q=MCY+Bili%C5%9Fim+Teknolojileri&amp;hq=MCY+Bili%C5%9Fim+Teknolojileri&amp;hnear=&amp;t=m&amp;vpsrc=6&amp;ll=40.982943,28.672471&amp;spn=0.00486,0.006437&amp;z=16&amp;iwloc=A&amp;source=embed" style="color:#0000FF;text-align:left">Daha Büyük Görüntüle</a></small></div>
        </div>
      <p>&nbsp;</p>
      <div class="clr"></div>
    </div>
    </div>
    <div class="clr"></div>
  </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="CPH_FBG" Runat="Server">
    <WUC3:WUC_FBG ID="WUC_FBG" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="CPH_Footer" Runat="Server">
    <WUC4:WUC_Footer ID="WUC_Footer" runat="server" />
</asp:Content>

