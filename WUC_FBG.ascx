<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUC_FBG.ascx.cs" Inherits="WUC_FBG" %>
<div class="FBG">
  <div class="FBG_resize">
      <asp:Repeater ID="Repeater1" runat="server" 
          onitemdatabound="Repeater1_ItemDataBound">
      <ItemTemplate>
      <div class="left">
      <h2><%# Eval("K_ANA_ADI")%></h2>
      <ul>
      <asp:HiddenField ID="hiddenID" Value='<%# Eval("K_ANA_ID") %>' runat="server" />
            <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                <li><a href="<%# ReWriterPath(Eval("K_ALT_ID").ToString(), Eval("K_ALT_ADI").ToString())%>"><%# Eval("K_ALT_ADI")%></a></li>
            </ItemTemplate>
            </asp:Repeater>
      </ul>
      </div>
      </ItemTemplate>
      </asp:Repeater>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
</div>