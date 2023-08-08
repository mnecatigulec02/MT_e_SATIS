<%@ Page Title="" Language="C#" MasterPageFile="~/SATICI.Master" AutoEventWireup="true" CodeBehind="SATICIBILGIGUNCELLE.aspx.cs" Inherits="MT_e_SATIS.SATICIAYARLAR.SATICIBILGIGUNCELLE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
        <div>
            SATICI ID :
            <asp:TextBox ID="TxtId" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
        <br />
        <div>
            SATICI Ad-Soyad :
            <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>

        <br />
        <div>
            SATICI Telefon :
            <asp:TextBox ID="TxtTelefon" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>

        <br />
        <div>
            SATICI Mail :
            <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>

        <br />
        <div>
            SATICI Cinsiyet :
               <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Enabled="False">
                   <asp:listitem>Erkek</asp:listitem>
                   <asp:listitem>Kadın</asp:listitem>
               </asp:DropDownList>
        </div>
        <br />

        <div>
            SATICI Kullancı Adı :
            <asp:TextBox ID="TxtKullaniciAdi" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>

        <br />
        <div>
            SATICI Şifre :
            <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>

        <br />
        <br />


        <asp:Button ID="Button1" runat="server" Text="DEĞİŞTİR" class="btn btn-danger" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Text="GÜNCELLE" class="btn btn-success" Visible="False" OnClick="Button2_Click"/>
    </form>

</asp:Content>
