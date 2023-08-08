<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="ADMINMESAJLAR.aspx.cs" Inherits="MT_e_SATIS.ADMINMESAJLAR.ADMINMESAJLAR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <div>
        <table class="table table-bordered">
            <tr>
                <th>MESAJ ID</th>
                <th>GÖNDEREN</th>
                <th>KONU</th>
                <th>İÇERİK</th>
                <th>İŞLEMLER</th>
            </tr>

             <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("MESAJID")%></td>
                    <td><%#Eval("MUSTERITAMAD")%></td>                  
                    <td><%#Eval("KONU")%></td>
                    <td><%#Eval("MESAJICERIK")%></td>
                    <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"/ADMINMESAJLAR/ADMINMESAJYANITLA.aspx?MESAJID="+Eval("MESAJID")%>'>YANITLA</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        </table>
       
    </div>
    </form>
    
</asp:Content>
