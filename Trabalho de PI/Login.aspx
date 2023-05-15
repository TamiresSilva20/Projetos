<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Trabalho_de_PI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link rel="stylesheet" href="Login.css" />
</head>
<body>
    <div class="container">
        <form id="form1" runat="server" class="form">
            <div>
                <asp:Login ID="Login1" runat="server" Height="388px" OnAuthenticate="Login1_Authenticate" Width="343px">
                    <CheckBoxStyle CssClass="formControl" />
                    <LabelStyle CssClass="formControlLabel" />
                    <LayoutTemplate>
                        <table cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
                            <tr>
                                <td>
                                    <table cellpadding="0" style="height: 388px; width: 343px;">
                                        <tr>
                                            <td align="center" class="header">Login</td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="formControlLabel">
                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nome do Usuário:</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="UserName" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="O Nome do Usuário é obrigatório." ToolTip="O Nome do Usuário é obrigatório." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="formControlLabel">
                                                <asp:Label ID="UserEmailLabel" runat="server" AssociatedControlID="UserEmail">E-mail:</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="UserEmail" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserEmail" ErrorMessage="O E-mail é obrigatório." ToolTip="O E-mail é obrigatório." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="Left" class="formControlLabel">
                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Senha:</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="Password" runat="server" CssClass="formControlTextBox" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="A senha é obrigatória." ToolTip="A senha é obrigatória." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="Left" class="formControlLabel">
                                                <asp:Label ID="PasswordConfirmLabel" runat="server" AssociatedControlID="PasswordConfirm">Confirme sua Senha:</asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="PasswordConfirm" runat="server" CssClass="formControlTextBox" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordConfirm" ErrorMessage="A Confirmação de senha é obrigatória." ToolTip="A Confirmação de senha é obrigatória." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="formControl">
                                                <asp:CheckBox ID="RememberMe" runat="server" Text="Lembrar na próxima vez." />
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td align="Center">
                                                <asp:Button ID="LoginButton" runat="server" CommandName="Login" CssClass="bnt" Text="Login" ValidationGroup="Login1" OnClick="LoginButton_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            
                                            <td align="Center">
                                                <asp:Button ID="SignUpButton" runat="server" CommandName="SignUp" CssClass="bnt" Text="Sign Up"  OnClick="SignUpButton_Click" />
                                            </td>
                                                
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <FailureTextStyle CssClass="formControlError" />
                    <LoginButtonStyle CssClass="bnt" />
                    <TextBoxStyle CssClass="formControlTextBox" />
                    <TitleTextStyle CssClass="header" />
                </asp:Login>
                <br />
            </div>
        </form>
    </div>
</body>
</html>
