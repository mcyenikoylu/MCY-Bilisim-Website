<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Default2" %>
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
    <h3>Hakkımızda</h3>


        <div class="left">
        <h4>MCY Bilişim Teknolojileri</h4>
        <p>
            MCY Bilişim Teknolojileri, yaratıcı genç beyinlerin oluşturduğu yenilikçi iş çözümleri ve hizmetleri sunan üç ortaklı bir işletmedir. 
            İşletmemiz yazılım, donanım ve IT proje çözümleri olarak üç ana departman ile bilişim teknolojileri sektöründe hizmet vermektedir. 
            Amacımız bilişim teknolojilerinde hızla ilerleyen ülkemizde işletmelerin bilişim teknolojileri çözümlerini karşılamak, 
            onlara dürüst ve güvenilir hizmet vermektir.
        </p>
        <p>&nbsp;</p>

        <h4>Vizyon</h4>
        <p>
            Yenilikçi teknoloji, çözüm ve hizmetleriyle paydaşlarını Avrupa ve yakın coğrafyada yarınlara taşıyan öncü güç olmaktır.
        </p>
        <p>&nbsp;</p>

        <h4>Misyon</h4>
        <p>
            Paydaşlarından aldığı gücü, onların gelişimi için kullanarak, ülkesi için değer yaratan, güvenilir, 
            yenilikçi ve yönlendirici teknoloji, çözüm, hizmet liderliği yapmak ve sürdürmektir.
        </p>
        <p>&nbsp;</p>
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

