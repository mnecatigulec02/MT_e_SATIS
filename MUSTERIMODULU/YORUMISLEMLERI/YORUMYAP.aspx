<%@ Page Title="" Language="C#" MasterPageFile="~/MUSTERI.Master" AutoEventWireup="true" CodeBehind="YORUMYAP.aspx.cs" Inherits="MT_e_SATIS.MUSTERIMODULU.YORUMISLEMLERI.YORUMYAP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <style type="text/css">
        .auto-style4 {
            position: relative;
            left: 0px;
            top: 2px;
        }
        .auto-style5 {
            position: relative;
            left: 16px;
            top: -1px;
        }
        .auto-style6 {
            color: #a94442;
            background-color: #f2dede;
            border-color: #ebccd1;
            position: relative;
            left: 707px;
            top: -62px;
        }
        .auto-style12 {
            position: relative;
            left: -2px;
            top: 14px;
        }
        .auto-style13 {
            position: relative;
            left: 719px;
            top: -62px;
            width: 230px;
            color: #a94442;
            border-color: #ebccd1;
            background-color: #f2dede;
        }
    </style>--%>
    <style type="text/css">
        .auto-style15 {
            position: relative;
            left: 39px;
            top: 9px;
        }
        .auto-style16 {
            position: relative;
            left: 24px;
            top: 3px;
            width: 230px;
        }
        .auto-style17 {
            width: 1121px;
        }
        .auto-style18 {
            position: relative;
            left: 103px;
            top: -120px;
            width: 230px;
        }
        .auto-style19 {
            position: relative;
            left: 300px;
            top: -104px;
            width: 230px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <br />
    <br />
   <div class="auto-style17">
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label">Müşteri Adı :</asp:Label>
    <asp:TextBox ID="txtmusteri" runat="server" CssClass="auto-style16" Height="30px" Width="300px"></asp:TextBox>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

       <br /n>
       <br />
    <asp:Label ID="Label1" runat="server" Text="Label">Ürün Adı :</asp:Label>
    <asp:TextBox ID="txturun" runat="server" CssClass="auto-style15" Height="30px" Width="300px"></asp:TextBox>
       &nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
&nbsp;<asp:Label ID="Label3" runat="server" Text="Yorum Metni :" style="position: relative"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />

       <br /n>
        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>

     <asp:TextBox ID="txtUrunYorum" runat="server" Height="300px" Width="500" MaxLength="480" TextMode="MultiLine" Columns="40" Rows="12" CssClass="auto-style18"></asp:TextBox> 
   </div>
    <asp:Button ID="Button1" runat="server" Text="Yorumu Paylaş" CssClass="auto-style19" Height="30px" OnClick="Button1_Click" Width="300px" BackColor="#0099FF" />
</asp:Content>
