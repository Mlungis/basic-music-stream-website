<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tech Sign In</title>

    <script>
        function showLoadingBar() {
            document.getElementById('loadingBar').style.display = 'Block';
        }
    </script>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: radial-gradient(circle at top left, #0f2027, #203a43, #2c5364);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }

        .login-container {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border-radius: 16px;
            padding: 40px 30px;
            width: 360px;
            box-shadow: 0 0 25px rgba(0, 0, 0, 0.4);
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            font-weight: 600;
            font-size: 28px;
            color: #00fff7;
        }

        label {
            display: block;
            text-align: left;
            margin: 12px 0 6px;
            font-size: 14px;
            color: #ccc;
        }

        .aspNetInput {
            width: 100%;
            padding: 10px 12px;
            background-color: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 8px;
            font-size: 14px;
            color: #fff;
            transition: border 0.3s ease, box-shadow 0.3s ease;
        }

        .aspNetInput::placeholder {
            color: #aaa;
        }

        .aspNetInput:focus {
            outline: none;
            border: 1px solid #00fff7;
            box-shadow: 0 0 8px #00fff7;
        }

        .aspNetButton {
            margin-top: 20px;
            background: linear-gradient(135deg, #00fff7, #006eff);
            color: #000;
            font-weight: bold;
            border: none;
            border-radius: 10px;
            padding: 12px;
            width: 100%;
            font-size: 16px;
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .aspNetButton:hover {
            transform: scale(1.05);
            box-shadow: 0 0 15px #00fff7;
        }

        .aspNetButton:active {
            transform: scale(0.98);
        }

        .links {
            margin-top: 25px;
            text-align: center;
        }

        .links a {
            color: #00fff7;
            font-size: 13px;
            text-decoration: none;
            display: block;
            margin: 5px 0;
            transition: color 0.3s;
        }

        .links a:hover {
            color: #ffffff;
        }

        #loadingBar {
            display: none;
            height: 4px;
            background: linear-gradient(90deg, #00fff7, #006eff);
            animation: loading 0.8s linear forwards;
            margin-top: 15px;
            border-radius: 2px;
        }

        @keyframes loading {
            0% { width: 0%; }
            100% { width: 100%; }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h1>Welcome to SoundFusion</h1>

            <label for="txtEmail">Email</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="aspNetInput" TextMode="Email" placeholder="Enter your email" />

            <label for="txtPassword">Password</label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="aspNetInput" TextMode="Password" placeholder="Enter your password" />

            <asp:Button ID="Button1" runat="server" CssClass="aspNetButton" Text="Sign In" OnClick="Button1_Click" OnClientClick="showLoadingBar();" />

            <div id="loadingBar"></div>

            <div class="links">
                <asp:Label runat="server" Text="Label" ID="lblresult"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Don't have an account?</asp:HyperLink>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/signup.aspx">Create one</asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>
