<%@ Page Title="" Language="C#" MasterPageFile="~/SATICI.Master" AutoEventWireup="true" CodeBehind="SATICISATISLAR.aspx.cs" Inherits="MT_e_SATIS.SATICISATISLAR.SATISLAR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
    <table class="table table-bordered">
        <tr>
            <th>SATICI Ad-Soyad</th>
            <th>SATIŞ ID</th>
            <th>ÜRÜN</th>
            <th>PERSONEL</th>
            <th>MÜŞTERİ</th>
            <th>FİYAT</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                     <td><%#Eval("SATICIADSOYAD")%></td>
                    <td><%#Eval("SATISID")%></td>
                    <td><%#Eval("URUNAD")%></td>
                    <td><%#Eval("PERSONELADSOYAD")%></td>
                    <td><%#Eval("MUSTERITAMAD")%></td>
                    <td><%#Eval("FIYAT")%></td>

                    <%--<td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/SATISLAR/SATISSIL.aspx?SATISID="+Eval("SATISID") %>' CssClass="btn btn-danger">SİL</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/SATISLAR/SATISGUNCELLE.aspx?SATISID="+Eval("SATISID") %>' CssClass="btn btn-warning">GÜNCELLE</asp:HyperLink></td>--%>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>

</asp:Content>
