﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace Trabalho_de_PI
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            OleDbConnection conn = new OleDbConnection();
            OleDbCommand cmd = new OleDbCommand();
            conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=C:\\Users\\tamir\\OneDrive\\Área de Trabalho\\Fatec_1.mdb";
            cmd.Connection = conn;
            cmd.CommandText = "Select* from login where cd_rg=  ";
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


                cmd.CommandText = "insert into aluno (cd_aluno, nome, endereço, cidade, idUf, idCurso) values (" + txtRA.Text + ", '" + txtNome.Text + "', '" + txtEndereco.Text + "', '" + txtCidade.Text + "', " + ddlUf.SelectedValue + ", " + ddlCurso.SelectedValue + ")";
                cmd.CommandType = CommandType.Text;
                conn.Open();
                cmd.ExecuteScalar();
                lblMensagem.Text = " Registro incluido com sucesso";
            }
            conn.Close();
            conn.Dispose();

        }
    }
}