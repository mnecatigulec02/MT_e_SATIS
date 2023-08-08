<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="PERSONELEKLE.aspx.cs" Inherits="MT_e_SATIS.PERSONELLER.PERSONELEKLE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
        <br />
        <div>
            Personel Ad-Soyad :
            <asp:TextBox ID="TxtAd" runat="server" placeholder="Personel Ad-Soyadını Girin..." CssClass="form-control"></asp:TextBox>
        </div>

        <br />
        <div>
            Personel Telefon :
            <asp:TextBox ID="TxtTelefon" runat="server" placeholder="Personel Telefonunu Girin..." CssClass="form-control"></asp:TextBox>
        </div>

        <br />
        <div>
            Personel Mail :
            <asp:TextBox ID="TxtMail" runat="server" placeholder="Personel Mailini Girin..." CssClass="form-control"></asp:TextBox>
        </div>
        
        <br />
        <div>
            Personel Cinsiyet :
               <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                <asp:listitem>Erkek</asp:listitem>
                    <asp:listitem>Kadın</asp:listitem>
            </asp:DropDownList>
        </div>
        <br />
        <br />
        <br />


        <asp:Button ID="Button1" runat="server" Text="EKLE" class="btn btn-success" OnClick="Button1_Click" />
    </form>
</asp:Content>
