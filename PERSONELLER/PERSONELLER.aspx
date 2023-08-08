<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="PERSONELLER.aspx.cs" Inherits="MT_e_SATIS.PERSONELLER.PERSONELLER" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <form runat="server" class="form-group" >
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
        <div>
            <table class="table table-bordered">
                <tr>
                    <td>PERSONEL ID</td>
                    <td>PERSONEL AD-SOYAD</td>
                    <td>PERSONEL TELEFON</td>
                    <td>PERSONEL MAİL</td>
                    <td>PERSONEL CİNSİYET</td>
                    <td>GÜNCELLE</td>
                    <td>SİL</td>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("PERSONELID")%></td>
                            <td><%#Eval("PERSONELADSOYAD")%></td>
                            <td><%#Eval("PERSONELTELEFON")%></td>
                            <td><%#Eval("PERSONELMAIL")%></td>
                            <td><%#Eval("PERSONELCINSIYET")%></td>
                            <td><asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success" NavigateUrl='<%#"PERSONELGUNCELLE.aspx?PERSONELID="+Eval("PERSONELID")%>'>GÜNCELLE</asp:HyperLink></td>
                            <td><asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-danger" NavigateUrl='<%#"PERSONELSIL.aspx?PERSONELID="+Eval("PERSONELID")%>'>SİL</asp:HyperLink></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
       <a href="PERSONELEKLE.aspx" class="btn btn-info">Personel Ekle</a>

    </form>

</asp:Content>
