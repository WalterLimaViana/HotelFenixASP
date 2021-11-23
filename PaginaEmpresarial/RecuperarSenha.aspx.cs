using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaEmpresarial
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_logar_Click(object sender, EventArgs e)
        {
            String email = txtEmail.Text;
            String cpf = txtCpf.Text;
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
            cmd.CommandText = "select * from registro where email = @email and cpf = @cpf";
            cmd.Parameters.AddWithValue("email", email);
            cmd.Parameters.AddWithValue("cpf", cpf);
            
            con.Open();
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.HasRows)
            {
                //direcionar para a pagina principal
                lMsg.Text = "Sua senha é:" + email;
            }
            else
            {
                lMsg.Text = "email ou senha incorretos!";
            }
        }
    }
}