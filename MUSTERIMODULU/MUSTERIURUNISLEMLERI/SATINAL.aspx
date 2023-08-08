<%@ Page Title="" Language="C#" MasterPageFile="~/MUSTERI.Master" AutoEventWireup="true" CodeBehind="SATINAL.aspx.cs" Inherits="MT_e_SATIS.MUSTERIMODULU.MUSTERIURUNISLEMLERI.SATINAL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style2 {
            position: relative;
            left: 1px;
            top: 0px;
        }
        .auto-style3 {
            position: relative;
            left: 2px;
            top: 0px;
        }
        .auto-style4 {
            position: relative;
            left: 3px;
            top: 0px;
        }
        .auto-style5 {
            position: relative;
            left: 4px;
            top: 0px;
        }
        .auto-style6 {
            position: relative;
            left: 5px;
            top: 0px;
        }
        .auto-style7 {
            position: relative;
            left: 26px;
            top: 0px;
        }
        .auto-style8 {
            position: relative;
            left: 12px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="margin:30px">
        MÜŞTERİ AD :
        <asp:TextBox ID="TextBoxmusteriad" runat="server" Height="30px" Width="300" CssClass="auto-style8" Enabled="False"></asp:TextBox>
        <br />
        <br />
        BÜTÇENİZ :
        <asp:TextBox ID="TextBoxmusteributce" runat="server" Height="30px" Width="300" CssClass="auto-style7" Enabled="False"></asp:TextBox>
        <br />
        <br />
        ADRESİNİZ :
        <asp:TextBox ID="TextBoxmusteriadres" runat="server" Height="30px" Width="300" CssClass="auto-style7" style="position: relative" Enabled="False"></asp:TextBox>
        <br />
        <br />
        TELEFONUNUZ :
        <asp:TextBox ID="TextBoxmusteritelefon" runat="server" Height="30px" Width="300" style="position: relative" Enabled="False"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Buttonbilgidegistir" runat="server" Text="DEĞİŞTİR" Height="30px" Width="300" BackColor="Lime" ForeColor="White" OnClick="Buttonbilgidegistir_Click"/>
        <asp:Button ID="Buttonbilgionayla" runat="server" Text="DEĞİŞİKLİĞİ ONAYLA" Height="30px" Width="300" BackColor="#FF6699" ForeColor="White" OnClick="Buttonbilgionayla_Click" Visible="False"/>
    </div>

    <div style="margin:30px">
        ÜRÜN AD :&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxurunad" runat="server" Height="30px" Width="300" Enabled="False"></asp:TextBox>  
        <br />
        <br />
        MARKA :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxmarka" runat="server" Height="30px" Width="300" CssClass="auto-style5" Enabled="False"></asp:TextBox>
        <br />
        <br />
        FİYAT :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxfiyat" runat="server" Height="30px" Width="300" Enabled="False"></asp:TextBox>
        
        <br />
        <br />
        <asp:Image ID="Image1" ImageUrl='\camasirmakinesi.jpg' runat="server" style="width:100px ; height:75px"/>
    </div>
    <asp:Button ID="Buttononayla" runat="server" Text="ONAYLA" Height="30px" Width="300" BackColor="Blue" ForeColor="White" style="position: relative ; margin:30px" OnClick="Buttononayla_Click" />

    

</asp:Content>
