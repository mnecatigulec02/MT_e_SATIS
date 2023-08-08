<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="SATISEKLE.aspx.cs" Inherits="MT_e_SATIS.SATISLAR.SATISEKLE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
        SATICI SEÇİN :
    <div>
        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control"></asp:DropDownList>
    </div>
        <br />
        ÜRÜN SEÇİN :
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
    </div>
        <br />
        MÜŞTERİ SEÇİN :
    <div>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"></asp:DropDownList>
    </div>
        <br />
        PERSONEL SEÇİN :
    <div>
        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control"></asp:DropDownList>
    </div>
        <br />
        FİYAT :
    <div>
        <asp:TextBox ID="TxtFiyat" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <br />
        
        <div>
            <asp:Button ID="Button1" runat="server" Text="Satış Yap" CssClass="btn btn-primary" OnClick="Button1_Click"/>
        </div>
    </form>

</asp:Content>
