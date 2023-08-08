<%@ Page Title="" Language="C#" MasterPageFile="~/MUSTERI.Master" AutoEventWireup="true" CodeBehind="MUSTERIBILGIGUNCELLE.aspx.cs" Inherits="MT_e_SATIS.MUSTERIBILGIGUNCELLE.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="margin:30px">
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red" ></asp:Label>

    </div>
   
  
    <form class="form-group">
        <div class="text-justify" style="margin:30px;">
            <br />
           

            <div>
                MÜŞTERİ ID :
            <div class="text-center">
                <asp:TextBox ID="TxtId" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            </div>
            <br />
            <div>
                MÜŞTERİ Ad:
            <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>

            <br />
            <div>
                MÜŞTERİ Soyad :
            <asp:TextBox ID="txtsoyad" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
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
            <asp:Button ID="Button1" runat="server" BackColor="#FF3300" ForeColor="White" Height="30px" OnClick="Button1_Click" Text="Değiştir" Width="300px" />
            <asp:Button ID="Button2" runat="server" BackColor="Lime" ForeColor="White" Height="30px" OnClick="Button2_Click" Text="Güncelle" Visible="False" Width="300px" />

            <br />
            <br />



        </div>



    </form>
</asp:Content>
