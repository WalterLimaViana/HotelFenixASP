using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaEmpresarial
{
    public partial class Pagamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lblcheckin.Text = Request.QueryString["checkin"];
                lblcheckout.Text = Request.QueryString["checkout"];
                lblquartos.Text = Request.QueryString["quartos"];
                lbladultos.Text = Request.QueryString["adultos"];
                lblcriancas.Text = Request.QueryString["criancas"];
            }
        }

        
        
    }
}