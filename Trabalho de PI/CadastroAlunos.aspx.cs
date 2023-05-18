using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.OleDb;
namespace Trabalho_de_PI
{
    public partial class CadastroAlunos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtNasc_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void dpdModalidade_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            OleDbConnection conn = new OleDbConnection();
            OleDbCommand cmd = new OleDbCommand();
            conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=C:\\Users\\tamir\\OneDrive\\Área de Trabalho\\aap-itaquapasse1.mdb";
            cmd.Connection = conn;
            cmd.CommandText = "Select* from CadastroAluno where rg_aluno=  " + txtRg.Text;
            cmd.CommandType = CommandType.Text; 
            conn.Open();

            OleDbDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                lblMensagem.Text = "Código já incluído";

            }
            else
            {
                conn.Close();


                cmd.CommandText = "INSERT INTO CadastroAluno (rg_aluno, nome, nasc, idade, endereco, n_end, bairro, cidade, email, fone_res, fone_com, filiacao, nome_esc, endereco_esc, bairro_esc, fone, curso, serie, grau, horario1, horario2, id_modalidade, cep) VALUES ('" + txtRg.Text + "', '" + txtNome.Text + "', '" + txtNasc.Text + "', " + txtIdade.Text + ", '" + txtEndereco.Text + "', " + txtNumero.Text + ", '" + txtBairro.Text + "', '" + txtCidade.Text + "', '" + txtEmail.Text + "', '" + txtFone.Text + "', '" + txtFoneCom.Text + "', '" + txtFili.Text + "', '" + txtEscola.Text + "', '" + txtEnderecoE.Text + "', '" + txtBairroE.Text + "', '" + txtFonesE.Text + "', '" + txtCurso.Text + "', '" + txtSerie.Text + "', '" + txtGrau.Text + "', '" + txtHoraAula.Text + "', '" + txtHoraAula2.Text + "', " + ddlModalidade.SelectedValue + ", " + txtCep.Text + ")";
                cmd.CommandType = CommandType.Text;
                conn.Open();
                cmd.ExecuteNonQuery();
                lblMensagem.Text = " Registro incluido com sucesso";
            }
            conn.Close();
            conn.Dispose();
        }

            
         

        protected void btnSeleciona_Click(object sender, EventArgs e)
        {
            if (foto.HasFile)
            {
                byte[] conteudoImagem;
                using (Stream arquivo = foto.FileContent)
                {
                    using (MemoryStream memoryStream = new MemoryStream())
                    {
                        arquivo.CopyTo(memoryStream);
                        conteudoImagem = memoryStream.ToArray();
                    }
                }

                using (OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=C:\\Users\\tamir\\OneDrive\\Área de Trabalho\\aap-itaquapasse1.mdb"))
                {
                    using (OleDbCommand cmd = new OleDbCommand())
                    {
                        cmd.Connection = conn;
                        cmd.CommandText = "INSERT INTO CadastroAluno (id_imagem) VALUES (?)";
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@imagem", conteudoImagem); 

                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        lblMensagem.Text = (" incluído com sucesso");
                    }
                }

            }
        }

    }
}

        
    
