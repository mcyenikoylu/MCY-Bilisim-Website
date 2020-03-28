<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/MPY1.master" AutoEventWireup="true" CodeFile="IcerikYonetimi.aspx.cs" Inherits="yonetim_Default2" %>
<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>
<%@ Register assembly="CKFinder" namespace="CKFinder" tagprefix="CKFinder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH_Body" Runat="Server">
    	<!-- Status Bar Start -->
        <div id="mesaj_dikkat" runat="server">
                <div class="status warning">
        	<p class="closestatus"><a href="" title="Close">x</a></p>
        	<p><img src="images/icons/icon_warning.png" alt="Warning" /><span>Dikkat!</span> Lorem ipsum dolor sit amet, consectetuer, sed diam nonummy nibh.</p>
        </div>
        </div>
        <div id="mesaj_basari" runat="server">
                <div class="status success">
        	<p class="closestatus"><a href="" title="Close">x</a></p>
        	<p><img src="images/icons/icon_success.png" alt="Success" /><span>Başarı!</span> İşleminiz başarılı şekilde sonuçlanmıştır. </p>
        </div>
        </div>
        <div id="mesaj_hata" runat="server">
                <div class="status error">
        	<p class="closestatus"><a href="" title="Close">x</a></p>
        	<p><img src="images/icons/icon_error.png" alt="Error" /><span>Hata!</span> İşleminizde bir hata oluştu! Lütfen kontrol edip tekrar deneyin. 
                <asp:Label ID="lbl_hata" runat="server" Text=""></asp:Label></p>
        </div>
        </div>
        <div id="mesaj_bilgi" runat="server">
                <div class="status info">
        	<p class="closestatus"><a href="" title="Close">x</a></p>
        	<p><img src="images/icons/icon_info.png" alt="Information" /><span>Bilgi:</span> Lorem ipsum dolor sit amet, consectetuer adipiscing, sed diam nonummy nibh.</p>
        </div>
        </div>
        <!-- Blue Status Bar End -->  


    <div class="contentcontainer">
            <div class="headings altheading">
                <h2>Kategori İçerik Yönetimi</h2>
            </div>
            <div class="contentbox">
                <asp:ListBox ID="lb_ana_kategori" runat="server" AutoPostBack="True" 
                    class="listbox" onselectedindexchanged="lb_ana_kategori_SelectedIndexChanged"></asp:ListBox>
                <asp:ListBox ID="lb_ana_kategori_id" runat="server" AutoPostBack="True" Visible="false"></asp:ListBox>
                <asp:ListBox ID="lb_alt_kategori" runat="server" AutoPostBack="True" 
                    class="listbox" onselectedindexchanged="lb_alt_kategori_SelectedIndexChanged"></asp:ListBox>
                <asp:ListBox ID="lb_alt_kategori_id" runat="server" AutoPostBack="True" Visible="false"></asp:ListBox>
                
                <div class="contentcontainer fll left">
                    
                        <p><br />
                            <asp:Label ID="Label1" runat="server" Text="Başlık" CssClass="labelBaslik"></asp:Label><br />
                            <asp:TextBox ID="txt_baslik" runat="server" CssClass="inputbox"></asp:TextBox><br />
                            <asp:Label ID="Label2" runat="server" Text="(Kategori ve title için uygun bir başlık giriniz.)" CssClass="smltxt"></asp:Label>
                        </p>
                        <p>
                            <asp:Panel ID="Panel1" runat="server" Height="450px" Width="900px">
                            <asp:Label ID="Label3" runat="server" Text="İçerik" CssClass="labelBaslik"></asp:Label><br />
                            <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server"></CKEditor:CKEditorControl>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="(Kategoriyi açıklayacak detaylı içerik giriniz.)" CssClass="smltxt"></asp:Label>
                            </asp:Panel>
                        </p>
                        <p>
                            <asp:Label ID="Label5" runat="server" Text="Description" CssClass="labelBaslik"></asp:Label><br />
                            <asp:TextBox ID="txt_description" runat="server" CssClass="inputbox" TextMode="MultiLine"></asp:TextBox><br />
                            <asp:Label ID="Label6" runat="server" Text="(Sayfanın description içeriğini yazın.)" CssClass="smltxt"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label7" runat="server" Text="Keywords" CssClass="labelBaslik"></asp:Label><br />
                            <asp:TextBox ID="txt_keywords" runat="server" CssClass="inputbox" TextMode="MultiLine"></asp:TextBox><br />
                            <asp:Label ID="Label8" runat="server" Text="(Sayfanın keywords içeriğini yazın.)" CssClass="smltxt"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label9" runat="server" Text="Yayın Durumu" CssClass="labelBaslik"></asp:Label><br />
                            <asp:DropDownList ID="ddl_yayin_durum" runat="server">
                            <asp:ListItem Value="0">Evet</asp:ListItem>
                            <asp:ListItem Value="1">Hayır</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:Label ID="Label10" runat="server" Text="(Sayfanın yayın durumunu seçin.)" CssClass="smltxt"></asp:Label>
                        </p>
                        <p>
                            <asp:Button ID="SaveButton" runat="server" Text="Kaydet"  CssClass="btn" ToolTip="Save the current editor text" />
                            <asp:Button ID="UpdateButton" runat="server" Text="Güncelle"  CssClass="btn" 
                                ToolTip="Save the current editor text" onclick="UpdateButton_Click" />
                            <asp:Button ID="DeleteButton" runat="server" Text="Sil"  CssClass="btn" ToolTip="Save the current editor text" />
                            <asp:TextBox ID="txt_ana_kategori_id" runat="server" Visible="false"></asp:TextBox>
                            <asp:TextBox ID="txt_alt_kategori_id" runat="server" Visible="false"></asp:TextBox>
                        </p>
                </div>
 

                <div style="clear: both;"></div>
            </div>
        </div>
</asp:Content>

