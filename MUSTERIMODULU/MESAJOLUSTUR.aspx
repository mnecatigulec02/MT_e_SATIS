<%@ Page Title="" Language="C#" MasterPageFile="~/MUSTERI.Master" AutoEventWireup="true" CodeBehind="MESAJOLUSTUR.aspx.cs" Inherits="MT_e_SATIS.MUSTERIMODULU.MESAJLAR" %>
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
            left: 5px;
            top: -5px;
        }
        .auto-style18 {
            position: relative;
            left: 20px;
            top: 3px;
            width: 303px;
        }
        .auto-style19 {
            position: relative;
            left: 19px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="auto-style22">
        <asp:Label ID="Label1" runat="server" Text="Label" style="position: relative"></asp:Label>
    </div>
    <br />
    <div class="auto-style16" style="margin:40px">
        <br />
        Kimden :<asp:TextBox ID="TextBoxKimden" runat="server" CssClass="auto-style17" Height="30px" Width="300px" Enabled="False"></asp:TextBox>
    <br />
    Kime :<asp:DropDownList ID="DropDownListKime" runat="server" CssClass="auto-style18" Height="30px" Width="300px"></asp:DropDownList>
        
        <br />
    <br />
       Konu :<asp:TextBox ID="TextBoxKonu" runat="server" CssClass="auto-style19" Height="30px" Width="300px"></asp:TextBox>
    <br />
    İçerik :<asp:TextBox ID="TextBoxMesajIcerik" runat="server" CssClass="auto-style20" Width="300px" TextMode="MultiLine"></asp:TextBox>
    
    <br />
    <asp:Button ID="ButtonGonder" runat="server" Text="Gönder" CssClass="auto-style21" Height="30px" Width="200px" BackColor="#33CCFF" OnClick="ButtonGonder_Click" />
    </div>
</asp:Content>
