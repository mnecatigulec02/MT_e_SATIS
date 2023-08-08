<%@ Page Title="" Language="C#" MasterPageFile="~/MUSTERI.Master" AutoEventWireup="true" CodeBehind="URUNINCELE2.aspx.cs" Inherits="MT_e_SATIS.MUSTERIMODULU.MUSTERIURUNISLEMLERI.URUNINCELE2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style15 {
            position: relative;
            left: 508px;
            top: -468px;
            width: 461px;
        }
        .auto-style16 {
            position: relative;
            left: 76px;
            top: -449px;
            width: 230px;
        }
        .auto-style17 {
            position: relative;
            left: 7px;
            top: -94px;
            width: 1094px;
            height: 646px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <%--   <br /n>
     <br /n>--%>
    <div style="margin:30px">
    <asp:Label ID="Label10" runat="server" Text="Label" Font-Bold="True" ForeColor="Red" style="position: relative"></asp:Label>
    </div>
    <br /n>
    <br /n>
    <br /n>
   
    &nbsp; 
       <div class="auto-style17" style="margin:30px"> 
       <asp:Label ID="Label2" runat="server" Text="Label" style="position: relative">ÜRÜN DETAY</asp:Label>      
       <asp:TextBox ID="txtUrunDetay" runat="server" Height="500px" MaxLength="8000" TextMode="MultiLine" Columns="40" Rows="200" CssClass="auto-style19" Enabled="False" style="position: relative; left: 11px; top: 8px; width: 377px;"></asp:TextBox> 
        <div class="auto-style15">

            <asp:Label ID="Label3" runat="server" Text="Ürün ID :"></asp:Label>

            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" style="position: relative" Text="Ürün AD :"></asp:Label>

            <asp:TextBox ID="txturunad" runat="server"  Height="30px" Width="300px" Enabled="False" CssClass="auto-style26" style="position: relative; left: 12px; top: 0px"></asp:TextBox>

            <br />

            <asp:TextBox ID="txtsaticiad" runat="server"  Height="30px" Width="300px" Enabled="False" CssClass="auto-style23" style="position: relative; left: 76px; top: 48px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" style="position: relative" Text="Satıcı AD :"></asp:Label>

            <br />

            <br />
            <br />
            <asp:Label ID="Label6" runat="server" style="position: relative" Text="Marka :"></asp:Label>

            <asp:TextBox ID="txtmarka" runat="server"  Height="30px" Width="300px" Enabled="False" CssClass="auto-style25" style="position: relative; left: 26px; top: 0px"></asp:TextBox>

            <br />

            <asp:TextBox ID="txtkategori" runat="server"  Height="30px" Width="300px" Enabled="False" CssClass="auto-style24" style="position: relative; left: 75px; top: 48px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" style="position: relative" Text="Kategori :"></asp:Label>

            <br />

            <br />

            <asp:TextBox ID="txtfiyat" runat="server"  Height="30px" Width="300px" Enabled="False" CssClass="auto-style27" style="position: relative; left: 70px; top: 24px"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" style="position: relative" Text="Fiyat :"></asp:Label>

            <br />
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" style="position: relative" Text="Stok :"></asp:Label>
            
            <asp:TextBox ID="txtstok" runat="server"  Height="30px" Width="300px" Enabled="False" CssClass="auto-style28" style="position: relative; left: 31px; top: 0px"></asp:TextBox>
            
        <asp:TextBox ID="txturunid" runat="server" CssClass="auto-style16" Height="30px" Width="300px" Enabled="False"></asp:TextBox>
            
            <br />
            
        </div>
    </div>       
    <br />
    <asp:Button ID="btnyorumyap" runat="server" CssClass="auto-style21" Height="50px" Text="Yorum Yap" Width="200px" style="position: relative; left: 720px; top: -223px" OnClick="btnyorumyap_Click"  />
    <asp:Label ID="Label1" runat="server" Text="YORUMLAR" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
    <%#Eval("YORUMID")%>
     <table class="table table-bordered">
        <tr>
            <th>YORUM ID</th>
            <th>MÜŞTERİ ADI</th>
            <th>YORUM</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("YORUMID")%></td>
                    <td><%#Eval("MUSTERIADSOYAD")%></td>
                    <td><%#Eval("YORUMMETNI")%></td>
                    <%--<td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/KATEGORISIL.aspx?KATEGORIID="+Eval("KATEGORIID") %>' CssClass="btn btn-danger">SİL</asp:HyperLink></td>
                    <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/KATEGORIGUNCELLE.aspx?KATEGORIID="+Eval("KATEGORIID") %>' CssClass="btn btn-warning">GÜNCELLE</asp:HyperLink></td>--%>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
    
     <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="50px" Text="Sil" Width="200px" Visible="False" />
</asp:Content>
