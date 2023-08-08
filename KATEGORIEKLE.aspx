<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="KATEGORIEKLE.aspx.cs" Inherits="MT_e_SATIS.KATEGORIEKLE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
        <div>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Kategori Adını Girin..." CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="Kategori Ekle" CssClass="btn btn-primary" OnClick="Button1_Click"/>
        </div>
    </form>
</asp:Content>
 