<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="DUYURUOLUSTUR.aspx.cs" Inherits="MT_e_SATIS.DUYURUOLUSTUR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style2 {
            position: relative;
            left: 103px;
            top: 0px;
        }
        .auto-style3 {
            position: relative;
            left: 8px;
            top: 0px;
        }
        .auto-style4 {
            position: relative;
            left: 3px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server" style="position: relative">
        <br />
        Duyuru Yapan :
        <asp:TextBox ID="txtduyuruyapan" runat="server" CssClass="auto-style4" Enabled="False" Height="30px" Width="400px"></asp:TextBox>
        <br />
        <br />
        Duyuru Metni : <asp:TextBox ID="txtduyurumetni" runat="server" Columns="25" CssClass="auto-style3" Height="300px" MaxLength="500" Rows="20" TextMode="MultiLine" Width="400px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnduyuruolustur" runat="server" BackColor="#FFFF66" BorderStyle="Groove" CssClass="auto-style2" Font-Size="20pt" Height="40px" Text="OLUŞTUR" Width="400px" OnClick="btnduyuruolustur_Click" />
    </form>
</asp:Content>
