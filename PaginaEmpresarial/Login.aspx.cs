using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaEmpresarial
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void bt_logar_Click(object sender, EventArgs e)
        {
            String email = txtEmail.Text;
            String senha = txtSenha.Text;
            //
            //capturar a string de conexão
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
            //cria um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from usuario where email = @email and senha = @senha";
            cmd.Parameters.AddWithValue("email", email);
            cmd.Parameters.AddWithValue("senha", senha);
            con.Open();
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.HasRows)
            {
                //direcionar para a pagina principal
                Response.Redirect("~/main.aspx");
            }
            else
            {
                lMsg.Text = "email ou senha incorretos!";
            }
        }
    }
}