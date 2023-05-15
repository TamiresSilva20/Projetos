<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroAlunos.aspx.cs" Inherits="Trabalho_de_PI.CadastroAlunos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
       <link rel="stylesheet" type="text/css" href="Cadastro.css"/>
     <script type="text/JavaScript" src="Cadastro.js">
         </script>
        
    <title> Itaqua Passe </title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="div1">

           <div class="div2"> Formulario de inscrição</div>

        </div>
        <fieldset style="font-family: 'Segoe UI'">

            <asp:Label ID="lblImg" runat="server" Text="Selecione uma Foto:"></asp:Label>
           
            <asp:FileUpload ID="foto" runat="server"  accept="image/*" onChange="previewImagem()" Enabled="True" />
                
        
            <asp:Image ID="Image1" runat="server" AlternateText="Pré visualização" Height="4cm" ImageAlign="Top" Width="3cm"/>
        
            <br />
            <br />
            <asp:Button ID="btnSelecionar" runat="server" Text="Selecionar" OnClick="btnSelecionar_Click" />
            <br />
            <br />
            <asp:Label ID="lblDp" runat="server" Text="Dados Pessoais" CssClass="dp"></asp:Label>
          
            <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblRg" runat="server" Text="RG:"></asp:Label>
            <asp:TextBox ID="txtRg" runat="server" pattern="\d{2}-?\d{3}-?\d{3}-?\d{1}" placeholder="00.000.000-0" ></asp:TextBox>
&nbsp;
            <asp:Label ID="lblNasc" runat="server" Text="Nasc.:"></asp:Label>
            <asp:TextBox ID="txtNasc" runat="server" Type="date" OnTextChanged="txtNasc_TextChanged"></asp:TextBox>
            &nbsp;
            <asp:Label ID="lblIdade" runat="server" Text="Idade: "></asp:Label>
            <asp:TextBox ID="txtIdade" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblEndereco" runat="server" Text="Endereço: "></asp:Label>
            <asp:TextBox ID="txtEndereco" runat="server"></asp:TextBox>
&nbsp;
            <asp:Label ID="lblNumero" runat="server" Text="Nº: "></asp:Label>
            <asp:TextBox ID="txtNumero" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblbairro" runat="server" Text="Bairro: "></asp:Label>
            <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
&nbsp;
            <asp:Label ID="lblCidade" runat="server" Text="Cidade: "></asp:Label>
            <asp:TextBox ID="txtCidade" runat="server" OnTextChanged="txtNasc_TextChanged"></asp:TextBox>
            &nbsp;
            <asp:Label ID="lblCep" runat="server" Text="CEP: "></asp:Label>
            <asp:TextBox ID="txtCep" runat="server" AutoCompleteType="HomeZipCode" pattern="\d{5}-?\d{3}" placeholder="00000-000"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblEmail" runat="server" Text="E-mail: "></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" AutoCompleteType="Email"></asp:TextBox>
&nbsp;
            <asp:Label ID="lblFone" runat="server" Text="Fone Res.: "></asp:Label>
            <asp:TextBox ID="txtFone" runat="server" AutoCompleteType="HomePhone" pattern="\d{7}-?\d{4}" placeholder="(00)90000-0000"></asp:TextBox>
&nbsp;<br />
            <br />
            <asp:Label ID="lblFoneCom" runat="server" Text="Fone Com: "></asp:Label>
            <asp:TextBox ID="txtFoneCom" runat="server" AutoCompleteType="BusinessPhone" pattern="\d{4}-?\d{4}" placeholder="0000-0000"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblFili" runat="server" Text="Filiação: "></asp:Label>
            <asp:TextBox ID="txtFili" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
                
            <asp:Label ID="lblDe" runat="server" CssClass="de" Text="Dados da Escola"></asp:Label>
            <hr />
            
            <asp:Label ID="lblEscola" runat="server" Text="Escola: "></asp:Label>
            <asp:TextBox ID="txtEscola" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblEnderecoE" runat="server" Text="Endereço: "></asp:Label>
            <asp:TextBox ID="txtEnderecoE" runat="server"></asp:TextBox>
&nbsp;
            <asp:Label ID="lblNumeroE" runat="server" Text="Nº: "></asp:Label>
            <asp:TextBox ID="txtNumeroE" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblbairroE" runat="server" Text="Bairro: "></asp:Label>
            <asp:TextBox ID="txtBairroE" runat="server"></asp:TextBox>
&nbsp;
            <asp:Label ID="lblCidadeE" runat="server" Text=" Cidade: "></asp:Label>
            <asp:TextBox ID="txtCidadeE" runat="server" OnTextChanged="txtNasc_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblFonesE" runat="server" Text="Fones:  "></asp:Label>
            <asp:TextBox ID="txtFonesE" runat="server" AutoCompleteType="HomePhone"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblCurso" runat="server" Text="Curso: "></asp:Label>
            <asp:TextBox ID="txtCurso" runat="server"></asp:TextBox>
&nbsp;
            <asp:Label ID="lblSerie" runat="server" Text="Série: "></asp:Label>
            <asp:TextBox ID="txtSerie" runat="server"  OnTextChanged="txtNasc_TextChanged"></asp:TextBox>
            &nbsp;
            <asp:Label ID="lblGrau" runat="server" Text="Grau: "></asp:Label>
            <asp:TextBox ID="txtGrau" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblModalidade" runat="server" Text="Modalidade: "></asp:Label>
            <asp:DropDownList ID="dpdModalidade" runat="server" Font-Names="Segoe UI" ForeColor="Black" font-weight="lighter" OnSelectedIndexChanged="dpdModalidade_SelectedIndexChanged">
                <asp:ListItem>Presencial</asp:ListItem>
                <asp:ListItem>SemiPresencial</asp:ListItem>
                <asp:ListItem>A Distancia</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lblHoraAula" runat="server" Text="Horario de aula: "></asp:Label>
            <asp:TextBox ID="txtHoraAula" type="time" runat="server"></asp:TextBox>
&nbsp;
            <asp:Label ID="lblAs" runat="server" Text="ás "></asp:Label>
&nbsp;<asp:TextBox ID="txtHoraAula2" runat="server" type="time"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Label ID="lblhora" runat="server" Text="hs."></asp:Label>
            &nbsp;
                
            <asp:Button ID="btnEnviar" runat="server" CssClass="ev" Text="Enviar" />
            <br />
            <br />
            <br />
            <br />
              
        </fieldset>
    </form>
</body>
</html>
