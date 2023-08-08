<%@ Page Title="" Language="C#" MasterPageFile="~/MUSTERI.Master" AutoEventWireup="true" CodeBehind="DUYURULAR.aspx.cs" Inherits="MT_e_SATIS.MUSTERIMODULU.DUYURULAR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <table class="table table-bordered">

        <tr>
            <td>DUYURU ID</td>
            <td>ADMİN</td>
            <td>DUYURU METNİ</td>
        </tr>


        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>

                <tr>
                    <td><%# Eval("DUYURUID") %></td>                    
                    <td><%# Eval("ADMINADSOYAD") %></td>
                    <td><%# Eval("DUYURUMETNI") %></td>
                </tr>

            </ItemTemplate>
        </asp:Repeater>


    </table>
</asp:Content>
