<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="KATEGORIGUNCELLE.aspx.cs" Inherits="MT_e_SATIS.KATEGORIGUNCELLE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
        <div>
            <asp:TextBox ID="TxtID" runat="server" placeholder="Kategori ID Girin..." CssClass="form-control" Enabled="false" ></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:TextBox ID="TxtAd" runat="server" placeholder="Kategori Adını Girin..." CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="Kategori Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click"/>
        </div>
    </form>
</asp:Content>
