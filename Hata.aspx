<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.master" AutoEventWireup="true" CodeFile="Hata.aspx.cs" Inherits="Default2" %>
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
    <h3>Hata!</h3>


        <div class="left">
        <h4>Sayfada Hata Oluştu!</h4>
        <div style="text-align:center;"> <img src="images/error.png" /> <br /> Ulaşmak istediğiniz sayfada bilinmeyen sebepten dolayı bir hata oluştu. 
        Aşağıdaki kategori alanından ulaşmak istediğiniz sayfaya erişebilirsiniz.</div>
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

