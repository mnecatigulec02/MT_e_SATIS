<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="MUSTERILER.aspx.cs" Inherits="MT_e_SATIS.MUSTERILER.MUSTERILER" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
    <div class="modal" id="Modal1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title">MÜŞTERİ EKLEME PANELİ</h2>
                </div>
                <form runat="server">
                    
                    <div class="modal-body">
                        <label>
                            Kullanıcı Adı:
                        </label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <label>
                            Şifre:
                        </label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="KAYDET" CssClass="btn btn-primary" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="VAZGEÇ" CssClass="btn btn-danger" data-dismiss="modal" />

                    </div>
                </form>
            </div>
        </div>

    </div>
    <br />
    <br />

    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>AD</th>
            <th>SOYAD</th>
            <th>KULLANICI ADI</th>
            <th>ŞİFRE</th>
            <th>MAİL</th>
            <th>TELEFON</th>
            <th>ADRES</th>
            <th>GÜNCELLE</th>
            <th>SİL</th>
        </tr>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("MUSTERIID") %></td>
                    <td><%#Eval("MUSTERIAD") %></td>
                    <td><%#Eval("MUSTERISOYAD") %></td>
                    <td><%#Eval("MUSTERIKULLANICIADI") %></td>
                    <td><%#Eval("MUSTERISIFRE") %></td>
                    <td><%#Eval("MUSTERIMAIL") %></td>
                    <td><%#Eval("MUSTERITELEFON") %></td>
                    <td><%#Eval("MUSTERIADRES") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success" NavigateUrl='<%#"MUSTERIGUNCELLE.aspx?MUSTERIID="+Eval("MUSTERIID")%>'>GÜNCELLE</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-danger" NavigateUrl='<%#"MUSTERISIL.aspx?MUSTERIID="+Eval("MUSTERIID")%>'>SİL</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Modal1">
        YENİ MÜŞTERİ TANIMLA
    </button>
    <br />
    <br />
    <br />
</asp:Content>
