<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.master" AutoEventWireup="true" CodeFile="Icerik.aspx.cs" Inherits="Default2" %>
<%@ Register Src="~/WUC_Head.ascx" TagName="WUC_Head" TagPrefix="WUC1" %>
<%@ Register Src="~/WUC_Menu.ascx" TagName="WUC_Menu" TagPrefix="WUC2" %>
<%@ Register Src="~/WUC_FBG.ascx" TagName="WUC_FBG" TagPrefix="WUC3" %>
<%@ Register Src="~/WUC_Footer.ascx" TagName="WUC_Footer" TagPrefix="WUC4" %>
<%@ Register Src="~/WUC_SidebarMenu.ascx" TagName="WUC_SidebarMenu" TagPrefix="WUC6" %>
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
    <h3>Hizmetlerimiz</h3>


        <div class="left">
        <h4><asp:Label ID="lbl_Baslik" runat="server" Text=""></asp:Label></h4>
        <p>
            <asp:Literal ID="ltrl_Icerik" runat="server"></asp:Literal>
        </p>
        <p>&nbsp;</p>
        </div>


        <div class="right">
        <h4>Tüm Hizmetlerimiz</h4>
        <div class="bg"></div>
        <div>
        <WUC6:WUC_SidebarMenu ID="WUC_SidebarMenu" runat="server" />
        </div>
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

