<%@ Page Title="" Language="C#" MasterPageFile="~/MUSTERI.Master" AutoEventWireup="true" CodeBehind="MUSTERIURUNLER.aspx.cs" Inherits="MT_e_SATIS.MUSTERIMODULU.MUSTERIURUNLER" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
        <div>
        <br />
    <div style="margin:50px">
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
    </div>
    <table class="table table-bordered" style="margin:50px">
        <tr>
            <th>ÜRÜN ID</th>
            <th>ÜRÜN ADI</th>
            <th>SATICI ADI</th>
            <th>MARKA</th>
            <th>KATEGORİ</th>
            <th>FİYAT</th>
            <th>STOK</th>
            <th>FOTO</th>
            <th>SEPETE EKLE</th>
            <th>İNCELE</th>
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

                    <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/\\MUSTERIMODULU\\MUSTERIURUNISLEMLERI\\MUSTERISEPET.aspx?URUNID="+Eval("URUNID") %>' CssClass="btn btn-success" >EKLE</asp:HyperLink></td>

                   <td>
                       <asp:HyperLink ID="HyperLink2" runat="server"  NavigateUrl='<%#"~/\\MUSTERIMODULU\\MUSTERIURUNISLEMLERI\\URUNINCELE.aspx?URUNID="+Eval("URUNID") %>' CssClass="btn btn-warning">İNCELE</asp:HyperLink>
                   </td>                    
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    </div>
 
    
</asp:Content>
