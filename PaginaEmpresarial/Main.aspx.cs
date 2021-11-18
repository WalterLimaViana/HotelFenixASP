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
            
        }

        protected void btnEnviarquerystring_Click(object sender, EventArgs e)
        {
            string dadosPagina;
            dadosPagina = "Pagamento.aspx?checkin=" + txtCheckin.Text +
                 "&checkout=" + txtCheckout.Text +
                 "&quartos=" + DropDownList1.SelectedItem +
                 "&adultos=" + DropDownList2.SelectedItem +
                 "&criancas=" + DropDownList3.SelectedItem;
            Response.Redirect(dadosPagina);
        }
    }
}