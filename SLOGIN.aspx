<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SLOGIN.aspx.cs" Inherits="MT_e_SATIS.SLOGIN" %>

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

        .auto-style1 {
            display: block;
            width: 100%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            margin-left: 578px;
        }
    </style>
</head>
<body style="background-color: transparent; background-image: url(blackwp1.jpg); background-position: center center;background-repeat:no-repeat;margin:0px 0px 0px 0px;background-size:100%;padding:0px 0px 0px 0px;">
     <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <%--<h2>GİRİŞ SAYFASI</h2>--%>
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
        <br />
    <form runat="server" class="form-group">
        

        <div class="imgcontainer">
            &nbsp;<img src="login-avatar-23.png" alt="Avatar" class="avatar"></div>

        <div style="margin-left: 478px">
            <asp:Label ID="Label7" runat="server" Text="Label" ForeColor="White">Satıcı Kullanıcı Adı :</asp:Label>
            <asp:TextBox ID="txtkullaniciadi" runat="server" CssClass="form-control" type="text" Width="300px"></asp:TextBox>
        </div>
        
        <div style="margin-left: 528px">
            <asp:Label ID="Label6" runat="server" Text="Label" ForeColor="White">Satıcı Şifre :</asp:Label>
            <asp:TextBox ID="txtsifre" runat="server" CssClass="form-control" type="password" Width="300px"></asp:TextBox>
        </div>
               
        <div style="margin-left: 710px">
            <asp:Button ID="Button2" runat="server" Text="Giriş" class="btn btn-success" OnClick="Button2_Click" Width="200px" BackColor="#9900CC"/>
        </div>

    </form>

</body>
</html>

