<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="ADMINBILGI.aspx.cs" Inherits="MT_e_SATIS.AYARLAR.ADMINBILGI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
        <div>
            ADMIN ID :
            <asp:TextBox ID="TxtId" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
        <br />
        <div>
            ADMIN Ad-Soyad :
            <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>

        <br />
        <div>
            ADMIN Telefon :
            <asp:TextBox ID="TxtTelefon" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>

        <br />
        <div>
            ADMIN Mail :
            <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>

        <br />
        <div>
            ADMIN Cinsiyet :
               <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Enabled="False">
                   <asp:listitem>Erkek</asp:listitem>
                   <asp:listitem>Kadın</asp:listitem>
               </asp:DropDownList>
        </div>
        <br />

        <div>
            ADMIN Kullancı Adı :
            <asp:TextBox ID="TxtKullaniciAdi" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>

        <br />
        <div>
            ADMIN Şifre :
            <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>

        <br />
        <br />


        <asp:Button ID="Button1" runat="server" Text="DEĞİŞTİR" class="btn btn-danger" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Text="GÜNCELLE" class="btn btn-success" OnClick="Button2_Click" Visible="False"/>
    </form>

</asp:Content>
