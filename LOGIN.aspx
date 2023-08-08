<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="MT_e_SATIS.LOGIN" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        form {
            border: 3px solid #f1f1f1;
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        button {
            background-color: #04AA6D;
            color: white;
            padding: 14px 20px;
            margin: 8px 350px;
            border: none;
            cursor: pointer;
            width: 50%;
        }

            button:hover {
                opacity: 0.8;
            }

        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }

        img.avatar {
            width: 10%;
            border-radius: 50%;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }

            .cancelbtn {
                width: 100%;
            }
        }
    </style>
</head>
<body style="background-color: transparent; background-image: url(blackwp1.jpg); background-position: center center;background-repeat:no-repeat;margin:0px 0px 0px 0px;background-size:100%;padding:0px 0px 0px 0px;">

    <%--<h2>GİRİŞ SAYFASI</h2>--%>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
    <asp:Label ID="Labelerror" runat="server" Text="Label" Font-Bold="True" ForeColor="Blue" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <table class="table table-bordered">
            <tr>
                <th>
                    <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="White"></asp:Label></th>
                <th>
                    <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="White"></asp:Label></th>
                <th>
                    <asp:Label ID="Label4" runat="server" Text="Label" ForeColor="White"></asp:Label></th>
                <th>
                    <asp:Label ID="Label5" runat="server" Text="Label" ForeColor="White"></asp:Label></th>
            </tr>
        </table>
    <form runat="server" class="form-group">
        
        <div class="imgcontainer">
            <img src="login-avatar-23.png" alt="Avatar" class="avatar">
        </div>

        <div style="margin-left: 470px">
            <asp:Label ID="Label7" runat="server" Text="Label" ForeColor="White">ADMIN Kullanıcı Adı :</asp:Label>
            <asp:TextBox ID="txtkullaniciadi" runat="server" CssClass="form-control" type="text" Width="300px"></asp:TextBox>
        </div>
        <br />
        <div style="margin-left: 470px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Label" ForeColor="White">ADMIN Şifre :</asp:Label>

            <asp:TextBox ID="txtsifre" runat="server" CssClass="form-control" type="password" Width="300px"></asp:TextBox>
        </div>

        <%--<div class="container" style="background-color: #f1f1f1">
            <span class="psw"><a href="#">Şifremi unuttum?</a></span>
        </div>--%>
        <asp:Button ID="Button2" runat="server" Text="Giriş" class="btn btn-success" OnClick="Button2_Click" Style="margin-left: 710px" NavigateUrl='<%#"~/AYARLAR/ADMINBILGI.aspx?ADMINID="+Eval("ADMINID")%>' Width="200px" BackColor="Red" />

    </form>
</body>
</html>

