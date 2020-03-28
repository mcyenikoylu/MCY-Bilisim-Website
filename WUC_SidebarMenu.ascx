<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUC_SidebarMenu.ascx.cs" Inherits="WUC_SidebarMenu" %>
<ul id="sidebarmenu">
    <asp:Repeater ID="Repeater1" runat="server"
    onitemdatabound="Repeater1_ItemDataBound">
    <ItemTemplate>
		<li>
			<a href="#"><%# Eval("K_ANA_ADI")%></a>
			<ul>
            <asp:HiddenField ID="hiddenID" Value='<%# Eval("K_ANA_ID") %>' runat="server" />
                <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
				<li><a href="<%# ReWriterPath(Eval("K_ALT_ID").ToString(), Eval("K_ALT_ADI").ToString())%>"><%# Eval("K_ALT_ADI")%></a></li>
                </ItemTemplate>
                </asp:Repeater>
			</ul>
		</li>
        </ItemTemplate>
	</asp:Repeater>
	</ul>