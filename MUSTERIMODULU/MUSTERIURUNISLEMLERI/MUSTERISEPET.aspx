<%@ Page Title="" Language="C#" MasterPageFile="~/MUSTERI.Master" AutoEventWireup="true" CodeBehind="MUSTERISEPET.aspx.cs" Inherits="MT_e_SATIS.MUSTERIMODULU.MUSTERIURUNISLEMLERI.MUSTERISEPETEEKLE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 1160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="auto-style1">
    <asp:Button ID="Buttontumsepetionayla" runat="server" Text="Sepeti Onayla" BackColor="#0066FF" ForeColor="White" Height="30px" OnClick="Buttontumsepetionayla_Click" style="position: relative" Width="300px" />
    </div>
    <div>
    <table class="table table-bordered" style="margin:50px">
        <tr>
            <th>SEPET ID</th>
            <th>ÜRÜN ID</th>
            <th>ÜRÜN AD</th>            
            <th>MÜŞTERİ AD</th>
            <th>ÜRÜN FİYAT</th>
           
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("SEPETID")%></td>
                    <td><%#Eval("URUNID")%></td>
                    <td><%#Eval("URUNAD")%></td>
                    <td><%#Eval("MUSTERIAD")%></td>
                    <td><%#Eval("URUNFIYAT")%></td>                    
                    <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/\\\\MUSTERIMODULU\\MUSTERIURUNISLEMLERI\\SATINAL.aspx?URUNID="+Eval("URUNID")+"&"+"SEPETID="+Eval("SEPETID") %>' CssClass="btn btn-success">SATIN AL</asp:HyperLink>
                       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/\\MUSTERIMODULU\\MUSTERIURUNISLEMLERI\\URUNINCELE.aspx?URUNID="+Eval("URUNID") %>' CssClass="btn btn-warning">İNCELE</asp:HyperLink>
                   </td>             
               <%--     <td><%#Eval("URUNMARKA")%></td>
                    <td><%#Eval("KATEGORIAD")%></td>
                    <td><%#Eval("URUNFIYAT")%></td>
                    <td><%#Eval("URUNSTOK")%></td>--%>
                   <%-- <td><asp:Image ID="Image1" ImageUrl='<%#Eval("URUNFOTO") %>' runat="server" style="width:100px ; height:75px"/></td>--%>
                   <%--<td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/\\MUSTERIMODULU\\MUSTERIURUNISLEMLERI\\MUSTERISEPET.aspx?URUNID="+Eval("URUNID") %>' CssClass="btn btn-success">EKLE</asp:HyperLink>
                       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/\\MUSTERIMODULU\\MUSTERIURUNISLEMLERI\\URUNINCELE.aspx?URUNID="+Eval("URUNID") %>' CssClass="btn btn-warning">İNCELE</asp:HyperLink>
                   </td>      --%>              
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    </div>
   <%-- <asp:Image ID="Image1" ImageUrl='<%#Eval("URUNFOTO") %>' runat="server" style="width:100px ; height:75px"/>--%>
</asp:Content>
