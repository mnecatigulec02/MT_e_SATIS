<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KULLANICISEC.aspx.cs" Inherits="MT_e_SATIS.KULLANICISEC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .button1 {
    position: absolute;
    left:10%;
    top: 40%;
    border-radius:50%;
}
         .button2 {
    position: absolute;
    left:40%;
    top: 40%;
    border-radius:50%;
}
          .button3 {
    position: absolute;
    left:70%;
    top: 40%;
    border-radius:50%;
}
    </style>
    <title></title>
</head>
<body style="background-color: antiquewhite; background-image: url(blackwp1.jpg); background-position: center center;background-repeat:no-repeat;margin:0px 0px 0px 0px;background-size:200%;padding:0px 0px 0px 0px;">
    
    <form id="form1" runat="server" class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" ForeColor="White" ></asp:Label>
        <div>
            <asp:Label ID="Label1" runat="server" Text="KULLANICI SEÇİNİZ" Font-Bold="True" Font-Italic="True" Font-Size="50pt" ForeColor="#3399FF" Height="100px"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="SATICI" CssClass="button1" BackColor="#000066" ForeColor="White" Height="138px" Width="370px" style="margin-left:0%;margin-right:auto;display:block;margin-top:0%;margin-bottom:0%" OnClick="Button2_Click" Font-Bold="False" Font-Italic="True" Font-Size="40pt"/>
           
            <asp:Button ID="Button1" runat="server" Text="MÜŞTERİ" CssClass="button2" BackColor="#006600" ForeColor="White" Height="138px" Width="370px" style="margin-left:auto;margin-right:auto;display:block;margin-top:0%;margin-bottom:0%" OnClick="Button1_Click" Font-Italic="True" Font-Size="40pt"/>
            <asp:Button ID="Button3" runat="server" Text="ADMIN" CssClass="button3" BackColor="#990033" ForeColor="White" Height="136px" Width="370px" style="margin-left:auto;margin-right:0%;display:block;margin-top:0%;margin-bottom:0%" OnClick="Button3_Click" Font-Italic="True" Font-Size="40pt"/>
        </div>      
            
        
    </form>
</body>
</html>
