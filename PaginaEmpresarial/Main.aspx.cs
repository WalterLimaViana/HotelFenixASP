using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaEmpresarial
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Session["entrada"] = txtCheckin.Text;
            Session["saida"] = txtCheckout.Text;
            Response.Redirect("Pagamento.aspx");
        }
    }
}