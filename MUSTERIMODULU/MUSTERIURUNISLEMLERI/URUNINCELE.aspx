<%@ Page Title="" Language="C#" MasterPageFile="~/MUSTERI.Master" AutoEventWireup="true" CodeBehind="URUNINCELE.aspx.cs" Inherits="MT_e_SATIS.MUSTERIMODULU.MUSTERIURUNISLEMLERI.URUNINCELE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <style type="text/css">
        
        .auto-style11 {
            position: relative;
            left: 4px;
            top: 1px;
        }

        .auto-style12 {
            position: relative;
            left: 120px;
            top: -462px;
            width: 461px;
            height: 41px;
        }
        .auto-style13 {
            position: relative;
            left: 638px;
            top: -502px;
            width: 415px;
            height: 515px;
        }
        .auto-style14 {
            height: 538px;
        }
        .auto-style15 {
            position: relative;
            left: 2px;
            top: 50px;
            width: 293px;
            height: 35px;
        }
        .auto-style16 {
            position: relative;
            left: 5px;
            top: 51px;
            width: 292px;
            height: 35px;
        }
        .auto-style17 {
            position: relative;
            left: -5px;
            top: 52px;
        }
        .auto-style18 {
            position: relative;
            left: 13px;
            top: 50px;
        }
        .auto-style19 {
            position: relative;
            left: 0px;
            top: 47px;
        }
        .auto-style20 {
            position: relative;
            left: 21px;
            top: 43px;
        }
        .auto-style21 {
            color: #fff;
            background-color: #337ab7;
            border-color: #2e6da4;
            position: relative;
            left: 746px;
            top: -126px;
        }
        .auto-style22 {
            color: #fff;
            background-color: #d9534f;
            border-color: #d43f3a;
            position: relative;
            left: 406px;
            top: 0px;
        }
    </style>--%>
    <%--<style type="text/css">
        .auto-style13 {
            position: relative;
            left: 592px;
            top: -629px;
            width: 569px;
            height: 545px;
        }
        .auto-style14 {
            width: 431px;
            position: relative;
            left: -55px;
            top: 14px;
            height: 426px;
        }
        .auto-style16 {
            width: 367px;
            position: relative;
            left: 659px;
            top: -594px;
        }
        .auto-style19 {
            position: relative;
            left: 127px;
            top: -88px;
            width: 415px;
        }
        .auto-style21 {
            position: relative;
            left: 903px;
            top: 3px;
            width: 230px;
        }
        .auto-style22 {
            position: relative;
            left: 73px;
            top: 48px;
            width: 230px;
        }
        .auto-style23 {
            position: relative;
            left: 71px;
            top: 42px;
        }
        .auto-style24 {
            position: relative;
            left: 66px;
            top: 38px;
        }
        .auto-style25 {
            position: relative;
            left: 16px;
            top: -1px;
        }
        .auto-style26 {
            position: relative;
            left: 6px;
            top: 3px;
        }
        .auto-style27 {
            position: relative;
            left: 72px;
            top: 20px;
        }
        .auto-style28 {
            position: relative;
            left: 34px;
            top: 8px;
        }
    </style>--%>
    <style type="text/css">
        .auto-style15 {
            position: relative;
            left: 782px;
            top: -474px;
            width: 522px;
        }
        .auto-style16 {
            position: relative;
            left: 394px;
            top: -438px;
            width: 1555px;
        }
        .auto-style17 {
            position: relative;
            left: -216px;
            top: -58px;
            width: 1555px;
            height: 536px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <br /n>
     <br /n>
    <div style="margin:30px">
    <asp:Label ID="Label10" runat="server" Text="Label" Font-Bold="True" ForeColor="Red" style="position: relative"></asp:Label>
    </div>
    <br /n>
    <br /n>
    <br /n>
   
    &nbsp; 
       <asp:Label ID="Label2" runat="server" Text="Label" style="position: relative">ÜRÜN DETAY</asp:Label>      
    <div class="auto-style17" style="margin:30px"> 
       <asp:TextBox ID="txtUrunDetay" runat="server" Height="500px" MaxLength="8000" TextMode="MultiLine" Columns="40" Rows="200" CssClass="auto-style19" Enabled="False" style="position: relative; left: 297px; top: 12px; width: 449px"></asp:TextBox> 
        <asp:TextBox ID="txturunid" runat="server" CssClass="auto-style16" Height="30px" Width="300px" Enabled="False"></asp:TextBox>
        <div class="auto-style15">

            <asp:Label ID="Label3" runat="server" Text="Ürün ID :"></asp:Label>

            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" style="position: relative" Text="Ürün AD :"></asp:Label>

            <asp:TextBox ID="txturunad" runat="server"  Height="30px" Width="300px" Enabled="False" CssClass="auto-style26"></asp:TextBox>
            <br />

            <asp:TextBox ID="txtsaticiad" runat="server"  Height="30px" Width="300px" Enabled="False" CssClass="auto-style23" style="position: relative; left: 73px; top: 45px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" style="position: relative" Text="Satıcı AD :"></asp:Label>

            <br />

            <br />
            <br />
            <asp:Label ID="Label6" runat="server" style="position: relative" Text="Marka :"></asp:Label>

            <asp:TextBox ID="txtmarka" runat="server"  Height="30px" Width="300px" Enabled="False" CssClass="auto-style25"></asp:TextBox>

            <br />

            <asp:TextBox ID="txtkategori" runat="server"  Height="30px" Width="300px" Enabled="False" CssClass="auto-style24" style="position: relative; left: 70px; top: 45px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" style="position: relative" Text="Kategori :"></asp:Label>

            <br />

            <br />

            <asp:TextBox ID="txtfiyat" runat="server"  Height="30px" Width="300px" Enabled="False" CssClass="auto-style27" style="position: relative; left: 53px; top: 25px"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" style="position: relative" Text="Fiyat :"></asp:Label>

            <br />
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" style="position: relative" Text="Stok :"></asp:Label>
            
            <asp:TextBox ID="txtstok" runat="server"  Height="30px" Width="300px" Enabled="False" CssClass="auto-style28"></asp:TextBox>
            
            <br />
            
        </div>
    </div>       
    <br />
    <asp:Button ID="btnyorumyap" runat="server" CssClass="auto-style21" Height="50px" Text="Yorum Yap" Width="200px" OnClick="btnyorumyap_Click" BackColor="#0099FF" style="position: relative; left: 700px; top: -97px" />
    <asp:Label ID="Label1" runat="server" Text="YORUMLAR" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
    <%#Eval("YORUMID")%>
    <br />
    <br />
     <table class="table table-bordered">
        <tr>
            <th>YORUM ID</th>
            <th>MÜŞTERİ ADI</th>
            <th>YORUM</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("YORUMID")%></td>
                    <td><%#Eval("MUSTERIADSOYAD")%></td>
                    <td><%#Eval("YORUMMETNI")%></td>
                    <%--<td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/KATEGORISIL.aspx?KATEGORIID="+Eval("KATEGORIID") %>' CssClass="btn btn-danger">SİL</asp:HyperLink></td>
                    <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/KATEGORIGUNCELLE.aspx?KATEGORIID="+Eval("KATEGORIID") %>' CssClass="btn btn-warning">GÜNCELLE</asp:HyperLink></td>--%>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
    
     <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="50px" Text="Sil" Width="200px" Visible="False" />
</asp:Content>
