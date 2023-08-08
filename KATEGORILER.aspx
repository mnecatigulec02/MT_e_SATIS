<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="KATEGORILER.aspx.cs" Inherits="MT_e_SATIS.KATEGORILER" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
    <table class="table table-bordered">
        <tr>
            <th>KATEGORİ ID</th>
            <th>KATEGORİ ADI</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("KATEGORIID")%></td>
                    <td><%#Eval("KATEGORIAD")%></td>
                    <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/KATEGORISIL.aspx?KATEGORIID="+Eval("KATEGORIID") %>' CssClass="btn btn-danger">SİL</asp:HyperLink></td>
                    <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/KATEGORIGUNCELLE.aspx?KATEGORIID="+Eval("KATEGORIID") %>' CssClass="btn btn-warning">GÜNCELLE</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
    <a href="KATEGORIEKLE.aspx" class="btn btn-info">Yeni Kategori</a>
</asp:Content>
