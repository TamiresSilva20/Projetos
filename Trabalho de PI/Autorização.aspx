<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Autorização.aspx.cs" Inherits="Trabalho_de_PI.Autorização" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" type="text/css" href="Autorização.css"/>
    <title>Autorização</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="div1">

           <div class="div2"> Lista de Alunos para Autorizar </div>

        </div>
      
            <br />
            <br />

            <asp:Label ID="lblSituação" runat="server" Text="Situação: " CssClass="texto"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="texto1" Font-Size="Medium">
                <asp:ListItem>Regular</asp:ListItem>
                <asp:ListItem>Trancado</asp:ListItem>
                <asp:ListItem>Licença</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
             <fieldset style="font-family: 'Segoe UI'">
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Image ID="imgAluno" runat="server" Height="2cm" Width="2cm" CssClass="img" />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" CssClass="texto1" Text="RA:"></asp:Label>
                        <asp:Label ID="lblDados" runat="server" CssClass="texto1" Font-Size="Medium"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:CheckBox ID="CkbJan" runat="server" Text="Janeiro" CssClass="checkBox" OnCheckedChanged="CkbJan_CheckedChanged" />
                        &nbsp;<asp:CheckBox ID="Ckbfer" runat="server" Text="Fevereiro" CssClass="checkBox" />
                        &nbsp;
                        <asp:CheckBox ID="Ckbmar" runat="server" Text="Março" CssClass="checkBox" />
                        <br />
                        <asp:CheckBox ID="Ckbabr" runat="server" OnCheckedChanged="CheckBox4_CheckedChanged" Text="Abril" CssClass="checkBox" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CkbMai" runat="server" Text="Maio" CssClass="checkBox" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CkbJun" runat="server" Text="Junho" CssClass="checkBox" />
                        <br />
                        <asp:CheckBox ID="CkbJul" runat="server" Text="Julho" CssClass="checkBox" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CkbAgo" runat="server" Text="Agosto" CssClass="checkBox" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CkbSet" runat="server" Text="Setembro" CssClass="checkBox" />
                        <br />
                        <asp:CheckBox ID="CkbOut" runat="server" Text="Outubro" CssClass="checkBox" />
                        &nbsp;<asp:CheckBox ID="CkbNov" runat="server" Text="Novembro" CssClass="checkBox" />
                        &nbsp;<asp:CheckBox ID="CkbDez" runat="server" Text="Dezembro" CssClass="checkBox" />
                    </td>
                     <td>
                         <asp:Button ID="btnAlterar" runat="server" CssClass="btn" Text="Alterar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="btnExcluir" runat="server" CssClass="btn" Text="Excluir" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                     <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                     <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                     <td>
                         <asp:Button ID="bntConfirmar" runat="server" CssClass="conf" Text="Confirmar" />
                    </td>
                </tr>
            </table>
                </fieldset>
            <br />

       
    </form>
</body>
</html>
