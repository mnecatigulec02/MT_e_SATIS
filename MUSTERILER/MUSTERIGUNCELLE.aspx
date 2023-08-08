<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="MUSTERIGUNCELLE.aspx.cs" Inherits="MT_e_SATIS.MUSTERILER.MUSTERIGUNCELLE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <form runat="server" class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
        <div>
            Müşteri ID:
            <asp:TextBox ID="TxtID" runat="server" CssClass="form-control" Enabled="false" ></asp:TextBox>
        </div>
        <br />
        <div>
            Müşteri Ad:
            <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
        <br />
             <div>
                 Müşteri Soyad:
            <asp:TextBox ID="TxtSoyad" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
            <br />

            <div>
                MÜŞTERİ Mail :
            <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>

            <br />

            <div>
                MÜŞTERİ Kullancı Adı :
            <asp:TextBox ID="TxtKullaniciAdi" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>

            <br />
            <div>
                MÜŞTERİ Şifre :
            <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                MÜŞTERİ Telefon :
            <asp:TextBox ID="TxtTelefon" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                MÜŞTERİ Adres :
            <asp:TextBox ID="txtadres" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
             <br />
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="Müşteri Bilgi Değiştir" CssClass="btn btn-danger" OnClick="Button1_Click" Width="400px"/>
        </div>
             <br />
        <div>
            <asp:Button ID="Button2" runat="server" Text="Müşteri Güncelle" CssClass="btn btn-success" OnClick="Button2_Click" Visible="False" Width="400px"/>
        </div>

    </form>

</asp:Content>
