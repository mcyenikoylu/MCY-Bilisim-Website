<%@ Page Title="" Language="C#" MasterPageFile="~/MP1.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Src="~/WUC_Head.ascx" TagName="WUC_Head" TagPrefix="WUC1" %>
<%@ Register Src="~/WUC_Menu.ascx" TagName="WUC_Menu" TagPrefix="WUC2" %>
<%@ Register Src="~/WUC_FBG.ascx" TagName="WUC_FBG" TagPrefix="WUC3" %>
<%@ Register Src="~/WUC_Footer.ascx" TagName="WUC_Footer" TagPrefix="WUC4" %>
<%@ Register Src="~/WUC_Slide.ascx" TagName="WUC_Slide" TagPrefix="WUC5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Head" Runat="Server">
    <WUC1:WUC_Head ID="WUC_Head" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH_Menu" Runat="Server">
    <WUC2:WUC_Menu ID="WUC_Menu" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="CPH_Slide" Runat="Server">
    <WUC5:WUC_Slide ID="WUC_Slide" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPH_Body" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="CPH_FBG" Runat="Server">
    <WUC3:WUC_FBG ID="WUC_FBG" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="CPH_Footer" Runat="Server">
    <WUC4:WUC_Footer ID="WUC_Footer" runat="server" />
</asp:Content>
