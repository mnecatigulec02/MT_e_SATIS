<%@ Page Title="" Language="C#" MasterPageFile="~/SATICI.Master" AutoEventWireup="true" CodeBehind="SATICIURUNLER.aspx.cs" Inherits="MT_e_SATIS.SATICIURUN.URUNLER" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
    <table class="table table-bordered">
        <tr>
            <th>SATICI Ad-Soyad</th>
            <th>ÜRÜN ID</th>
            <th>ÜRÜN ADI</th>
            <th>MARKA</th>
            <th>KATEGORİ</th>
            <th>FİYAT</th>
            <th>STOK</th>
            <th>FOTO</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("SATICIADSOYAD")%></td>
                    <td><%#Eval("URUNID")%></td>
                    <td><%#Eval("URUNAD")%></td>
                    <td><%#Eval("URUNMARKA")%></td>
                    <td><%#Eval("KATEGORIAD")%></td>
                    <td><%#Eval("URUNFIYAT")%></td>
                    <td><%#Eval("URUNSTOK")%></td>
                    <td><asp:Image ID="Image1" ImageUrl='<%#Eval("URUNFOTO") %>' runat="server" style="width:100px ; height:75px"/></td>
                    <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/SATICIURUN/SATICIURUNSIL.aspx?URUNID="+Eval("URUNID") %>' CssClass="btn btn-danger">SİL</asp:HyperLink></td>
                    <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/SATICIURUN/SATICIURUNGUNCELLE.aspx?URUNID="+Eval("URUNID") %>' CssClass="btn btn-warning">GÜNCELLE</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
    <a href="SATICIURUNEKLE.aspx" class="btn btn-info">Ürün Ekle</a>

</asp:Content>
