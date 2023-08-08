<%@ Page Title="" Language="C#" MasterPageFile="~/MUSTERI.Master" AutoEventWireup="true" CodeBehind="KATEGORILENMISURUNLER.aspx.cs" Inherits="MT_e_SATIS.MUSTERIMODULU.KATEGORILENMISURUNLER" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <br />
    <br />

    <table class="table table-bordered">
        <tr>
            <th>ÜRÜN ID</th>
            <th>ÜRÜN ADI</th>
            <th>SATICI ADI</th>
            <th>MARKA</th>
            <th>KATEGORİ</th>
            <th>FİYAT</th>
            <th>STOK</th>
            <th>FOTO</th>
            <th>İŞLEMLER</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("URUNID")%></td>
                    <td><%#Eval("URUNAD")%></td>
                    <td><%#Eval("SATICIADSOYAD")%></td>
                    <td><%#Eval("URUNMARKA")%></td>
                    <td><%#Eval("KATEGORIAD")%></td>
                    <td><%#Eval("URUNFIYAT")%></td>
                    <td><%#Eval("URUNSTOK")%></td>
                    <td><asp:Image ID="Image1" ImageUrl='<%#Eval("URUNFOTO") %>' runat="server" style="width:100px ; height:75px"/></td>

                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/MUSTERIMODULU/SEPET.aspx?URUNID="+Eval("URUNID") %>' CssClass="btn btn-success">SEPETE EKLE</asp:HyperLink>
                    
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/MUSTERIMODULU/MUSTERIURUNISLEMLERI/URUNINCELE.aspx?URUNID="+Eval("URUNID") %>' CssClass="btn btn-warning">İNCELE</asp:HyperLink>
                    </td>

                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
    <asp:Button ID="Button1" runat="server" Text="Filtreleri Sil" CssClass="alert-info" OnClick="Button1_Click" />
</asp:Content>
