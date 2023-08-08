<%@ Page Title="" Language="C#" MasterPageFile="~/SATICI.Master" AutoEventWireup="true" CodeBehind="SATICIISTATISTIKLER.aspx.cs" Inherits="MT_e_SATIS.SATICIISTATISTIKLER.SATICIISTATISTIKLER" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
        <div>
            Toplam Müşteri Sayısı :
            <asp:TextBox ID="txtmusteri" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
        <br />

        <div>
            Toplam Ürün Sayısı :
            <asp:TextBox ID="txturun" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
        <br />

        <div>
            Toplam Kategori Sayısı:
            <asp:TextBox ID="txtkategori" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
        <br />

        <div>
            Toplam Personel Sayısı :
            <asp:TextBox ID="txtpersonel" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
        <br />

        <div>
            Toplam Satış Sayısı:
            <asp:TextBox ID="txtsatis" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
         <br />

        <div>
            Satıcının Satış Sayısı:
            <asp:TextBox ID="txtsaticisatis" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
        <br />

        <div>
            Satıcının Toplam Kazancı :
            <asp:TextBox ID="txtkazanc" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
    </form>

</asp:Content>
