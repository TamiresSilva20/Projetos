<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp2.aspx.cs" Inherits="Trabalho_de_PI.SignUp2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="Login.css" />
</head>
<body>
    <div class="container" id="sign">
        <form id="form1" runat="server">

            <asp:Label ID="lblMensagem" runat="server"></asp:Label>

            <div align="center" class="header">Sign Up</div>

            <div class="form-control">
                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="formControlLabel">Nome do Usuário:</asp:Label>

                <asp:TextBox ID="txtNome" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="O Nome do Usuário é necessário." ToolTip="O Nome do Usuário é necessário." ValidationGroup="sign">*</asp:RequiredFieldValidator>

            </div>
            <div class="form-control">
                <asp:Label ID="lblRg" runat="server" AssociatedControlID="rg" CssClass="formControlLabel">RG: </asp:Label>

                <asp:TextBox ID="txtRg" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lblRgRequired" runat="server" ControlToValidate="rg" ErrorMessage="O Rg é necessário." ToolTip="O Rg é necessário." ValidationGroup="sign">*</asp:RequiredFieldValidator>
            </div>
            <div class="form-control">

                <asp:Label ID="lblDt" runat="server" AssociatedControlID="Dt" CssClass="formControlLabel">Dt.Nascimento: </asp:Label>

                <asp:TextBox ID="txtDt" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lblDtRequired" runat="server" ControlToValidate="Dt" ErrorMessage="A data de nascimento é necessária." ToolTip="A data de nascimento é necessária." ValidationGroup="sign">*</asp:RequiredFieldValidator>
            </div>
            <div class="form-control">
                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="formControlLabel">Email:</asp:Label>

                <asp:TextBox ID="txtEmail" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="O email é necessário." ToolTip="O email é necessário." ValidationGroup="sign">*</asp:RequiredFieldValidator>
            </div>
            <div class="form-control">
                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="formControlLabel">Senha:</asp:Label>

                <asp:TextBox ID="txtPassword" runat="server" CssClass="formControlTextBox" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="A senha é necessária." ToolTip="A senha é necessária." ValidationGroup="sign">*</asp:RequiredFieldValidator>
            </div>
            <div class="form-control">
                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword" CssClass="formControlLabel">Confirmar Senha:</asp:Label>

                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="formControlTextBox" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="É necessário Confirmar Senha." ToolTip="É necessário Confirmar Senha." ValidationGroup="sign">*</asp:RequiredFieldValidator>
            </div>
            <div class="form-control">
                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" CssClass="formControlLabel" Display="Dynamic" ErrorMessage="A Senha e a Senha de Confirmação devem coincidir." ValidationGroup="sign"></asp:CompareValidator>

                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>

            </div>

            <asp:Button ID="btnCriar" runat="server" CssClass="bnt" OnClick="btnCriar_Click" Text="Criar Usuario" />
            <br />
            <br />
            <asp:Button ID="btnVoltar" runat="server" CssClass="bnt" Text="Voltar" />

        </form>
    </div>
</body>
</html>

