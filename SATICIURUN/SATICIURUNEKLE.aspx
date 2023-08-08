<%@ Page Title="" Language="C#" MasterPageFile="~/SATICI.Master" AutoEventWireup="true" CodeBehind="SATICIURUNEKLE.aspx.cs" Inherits="MT_e_SATIS.SATICIURUN.SATICIURUNEKLE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
        <div>
            Ürün Adı :
            <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />

       <%-- <div>
            Satıcı Seçiniz :
            <asp:DropDownList ID="DropDownListsatici" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <br />--%>
         <div>
             Marka Adı :
            <asp:TextBox ID="TxtMarka" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            Kategori Seçiniz :
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <br />
         <div>
             Fiyat Giriniz :
            <asp:TextBox ID="TxtFiyat" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
         <div>
             Stok Sayısı :
            <asp:TextBox ID="TxtStok" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="Ürün Ekle" CssClass="btn btn-primary" OnClick="Button1_Click"/>
        </div>
    </form>

</asp:Content>
