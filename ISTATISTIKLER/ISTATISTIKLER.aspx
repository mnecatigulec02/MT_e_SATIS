<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="ISTATISTIKLER.aspx.cs" Inherits="MT_e_SATIS.ISTATISTIKLER.ISTATISTIKLER" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
        <div>
            TOPLAM MÜŞTERİ SAYISI :
            <asp:TextBox ID="txtmusteri" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
        <br />

        <div>
            TOPLAM ÜRÜN SAYISI :
            <asp:TextBox ID="txturun" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
        <br />

        <div>
            TOPLAM KATEGORİ SAYISI :
            <asp:TextBox ID="txtkategori" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
        <br />

        <div>
            TOPLAM PERSONEL SAYISI :
            <asp:TextBox ID="txtpersonel" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
        <br />

        <div>
            TOPLAM SATIŞ SAYISI :
            <asp:TextBox ID="txtsatis" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
    </form>
</asp:Content>
