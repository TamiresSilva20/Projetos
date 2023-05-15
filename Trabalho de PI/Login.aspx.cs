using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabalho_de_PI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void Password_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp");//chama a pagina 
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastroAlunos");//chama a pagina 
        }
    }
}