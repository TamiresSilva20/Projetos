<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Trabalho_de_PI.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sign Up</title>
    <link rel="stylesheet" href="Login.css" />
</head>
<body>
     <div class="container">
        <form id="form1" runat="server" class="form">
            <div>
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Height="868px" OnCreatedUser="CreateUserWizard1_CreatedUser" Width="376px"  >
                <CreateUserButtonStyle CssClass="bnt"  />
                   
                <WizardSteps>
                    <asp:CreateUserWizardStep runat="server">
                        <ContentTemplate>
                             <table cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
                            <tr>
                                <td>
                                    <table cellpadding="0" style="height: 388px; width: 343px;">
                                <tr>
                                    <td align="center" class="header" >Sign Up</td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="formControlLabel">Nome do Usuário:</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="O Nome do Usuário é necessário." ToolTip="O Nome do Usuário é necessário." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                            <tr>
                                        <td align="left">
                                            <asp:Label ID="lblRg" runat="server" AssociatedControlID="rg" CssClass="formControlLabel">RG: </asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtRg" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="lblRgRequired" runat="server" ControlToValidate="rg" ErrorMessage="O Rg é necessário." ToolTip="O Rg é necessário." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                          <tr>
                                        <td align="left">
                                            <asp:Label ID="lblDt" runat="server" AssociatedControlID="Dt" CssClass="formControlLabel">Dt.Nascimento: </asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtDt" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="lblDtRequired" runat="server" ControlToValidate="Dt" ErrorMessage="A data de nascimento é necessária." ToolTip="A data de nascimento é necessária." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="formControlLabel">Email:</asp:Label>
                                    </td>
                                </tr>

                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="Email" runat="server" CssClass="formControlTextBox"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="O email é necessário." ToolTip="O email é necessário." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                      
                                  
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="formControlLabel">Senha:</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="Password" runat="server" CssClass="formControlTextBox" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="A senha é necessária." ToolTip="A senha é necessária." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword" CssClass="formControlLabel">Confirmar Senha:</asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="formControlTextBox" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="É necessário Confirmar Senha." ToolTip="É necessário Confirmar Senha." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                 
                                    <tr>
                                        <td align="center">
                                            <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" CssClass="formControlLabel" Display="Dynamic" ErrorMessage="A Senha e a Senha de Confirmação devem coincidir." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="color: Red;">
                                            <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                </tr>

                             </table>
                                </td>
                            </tr>

                        </table>

                        </ContentTemplate>
                    </asp:CreateUserWizardStep>
                    <asp:CompleteWizardStep runat="server" />
                </WizardSteps>

            </asp:CreateUserWizard>
               
        </div>

    </form>
         </div>
</body>
</html>
