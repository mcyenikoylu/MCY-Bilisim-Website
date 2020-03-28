<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.master" AutoEventWireup="true" CodeFile="UlasimKroki.aspx.cs" Inherits="Default2" %>
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
    <h3>Ulaşım &amp; Kroki</h3>


        <div class="left">
        <h4>Kroki</h4>
        <p><iframe width="540" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?source=s_q&amp;hl=tr&amp;geocode=&amp;q=MCY+Bili%C5%9Fim+Teknolojileri,+Marmara+Mahhalesi,+H%C3%BCrriyet+Bulvar%C4%B1,+1.+Sokak+No:3%2FB,+Yakuplu+Beylikd%C3%BCz%C3%BC&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=41.546728,79.013672&amp;vpsrc=0&amp;ie=UTF8&amp;hq=MCY+Bili%C5%9Fim+Teknolojileri,+Marmara+Mahhalesi,+H%C3%BCrriyet+Bulvar%C4%B1,+1.+Sokak+No:3%2FB,+Yakuplu+Beylikd%C3%BCz%C3%BC&amp;hnear=Beylikd%C3%BCz%C3%BC%2FIstanbul,+T%C3%BCrkiye&amp;t=m&amp;ll=40.982555,28.672428&amp;spn=0.022678,0.046349&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="http://maps.google.com/maps?source=embed&amp;hl=tr&amp;geocode=&amp;q=MCY+Bili%C5%9Fim+Teknolojileri,+Marmara+Mahhalesi,+H%C3%BCrriyet+Bulvar%C4%B1,+1.+Sokak+No:3%2FB,+Yakuplu+Beylikd%C3%BCz%C3%BC&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=41.546728,79.013672&amp;vpsrc=0&amp;ie=UTF8&amp;hq=MCY+Bili%C5%9Fim+Teknolojileri,+Marmara+Mahhalesi,+H%C3%BCrriyet+Bulvar%C4%B1,+1.+Sokak+No:3%2FB,+Yakuplu+Beylikd%C3%BCz%C3%BC&amp;hnear=Beylikd%C3%BCz%C3%BC%2FIstanbul,+T%C3%BCrkiye&amp;t=m&amp;ll=40.982555,28.672428&amp;spn=0.022678,0.046349&amp;z=14&amp;iwloc=A" style="color:#0000FF;text-align:left">Daha Büyük Görüntüle</a></small></p>
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

