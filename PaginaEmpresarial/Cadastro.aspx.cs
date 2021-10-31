using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaEmpresarial
{
    public partial class cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            //capturar a string de conexão
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
            //cria um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Insert into registro (nome,email,senha,cpf,celular,endereco,estado) values (@nome,@email,@senha,@cpf,@celular,@endereco,@estado)";
            cmd.Parameters.AddWithValue("nome", txtNome.Text);
            cmd.Parameters.AddWithValue("email", txtEmail.Text);
            cmd.Parameters.AddWithValue("senha", txtSenha.Text);
            cmd.Parameters.AddWithValue("cpf", txtCpf.Text);
            cmd.Parameters.AddWithValue("celular", txtTelefone.Text);
            cmd.Parameters.AddWithValue("endereco", txtEnd.Text);
            cmd.Parameters.AddWithValue("estado", txtEstado.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Login.aspx");
        }
    }
}