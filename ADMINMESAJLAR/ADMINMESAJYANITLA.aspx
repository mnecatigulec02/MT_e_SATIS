<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="ADMINMESAJYANITLA.aspx.cs" Inherits="MT_e_SATIS.ADMINMESAJLAR.ADMINMESAJYANITLA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style type="text/css">
        .auto-style16 {
            height: 483px;
            position: relative;
            left: 0px;
            top: 0px;
        }
        .auto-style17 {
            position: relative;
            left: 40px;
            top: -5px;
        }
        .auto-style19 {
            position: relative;
            left: 56px;
            top: 2px;
        }
        .auto-style20 {
            position: relative;
            left: 18px;
            top: 17px;
            height: 161px;
        }
        .auto-style21 {
            position: relative;
            left: 159px;
            top: 35px;
        }
        .auto-style22 {
            margin-left: 1400px;
        }
            .auto-style23 {
                position: relative;
                left: 56px;
                top: 17px;
                height: 161px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <div class="auto-style22">
        <asp:Label ID="Label1" runat="server" Text="Label" style="position: relative"></asp:Label>
    </div>
    <br />
    <div class="auto-style16" style="margin:40px">
        <br />
        Kimden :<asp:TextBox ID="TextBoxKimden" runat="server" CssClass="auto-style17" Height="30px" Width="300px" Enabled="False"></asp:TextBox>
   
    <br />
       Konu :<asp:TextBox ID="TextBoxKonu" runat="server" CssClass="auto-style19" Height="30px" Width="300px" Enabled="False"></asp:TextBox>
    <br />
    İçerik :<asp:TextBox ID="TextBoxMesajIcerik" runat="server" CssClass="auto-style23" Width="300px" TextMode="MultiLine" Enabled="False"></asp:TextBox>
    
    <br />
        <br />
    Admin Yanıt :<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style20" Width="300px" TextMode="MultiLine"></asp:TextBox>
    
    <br />
    <asp:Button ID="ButtonGonder" runat="server" Text="Gönder" CssClass="auto-style21" Height="30px" Width="200px" BackColor="#33CCFF" OnClick="ButtonGonder_Click"/>
    </div>
    </form>
    
</asp:Content>
