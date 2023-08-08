<%@ Page Title="" Language="C#" MasterPageFile="~/SATICI.Master" AutoEventWireup="true" CodeBehind="SATICIURUNGUNCELLE.aspx.cs" Inherits="MT_e_SATIS.SATICIURUN.SATICIURUNGUNCELLE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

      <form runat="server" class="form-group">
          <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
        <div>
            ÜRÜN ADI :
            <asp:TextBox ID="TxtAd" runat="server" placeholder="Ürün Adını Girin..." CssClass="form-control"></asp:TextBox>
        </div>
        <br />
         <div>
             MARKA :
            <asp:TextBox ID="TxtMarka" runat="server" placeholder="Ürün Marka Girin..." CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            KATEGORİ SEÇ:
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <br />
         <div>
             FİYAT :
            <asp:TextBox ID="TxtFiyat" runat="server" placeholder="Ürün Fiyat Girin..." CssClass="form-control"></asp:TextBox>
        </div>
        <br />
         <div>
             STOK :
            <asp:TextBox ID="TxtStok" runat="server" placeholder="Ürün Stok Girin..." CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="Ürün Güncelle" CssClass="btn btn-warning" OnClick="Button1_Click"/>
        </div>
    </form>


</asp:Content>
