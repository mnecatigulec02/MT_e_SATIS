<%@ Page Title="" Language="C#" MasterPageFile="~/MUSTERI.Master" AutoEventWireup="true" CodeBehind="MESAJLARIM.aspx.cs" Inherits="MT_e_SATIS.MUSTERIMODULU.MESAJLARIM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style15 {
            margin-left: 1240px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     
        <div style="margin:25px">
        <table class="table table-bordered">
            <tr>
                <th>MESAJ ID</th>
                <th>GÖNDEREN</th>
                <th>KONU</th>
                <th>İÇERİK</th>
                <th>ADMİN YANIT</th>
            </tr>

             <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("MESAJID")%></td>
                    <td><%#Eval("MUSTERITAMAD")%></td>                  
                    <td><%#Eval("KONU")%></td>
                    <td><%#Eval("MESAJICERIK")%></td>
                    <td><%#Eval("ADMINYANIT")%></td>                    
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        </table>
       
    </div>
        <div class="auto-style15" style="margin:25px">
            <asp:Button ID="Button1" runat="server" Text="MESAJ OLUŞTUR" BackColor="#0099FF" OnClick="Button1_Click" Height="30px" Width="300px" />
        </div>
  

</asp:Content>
