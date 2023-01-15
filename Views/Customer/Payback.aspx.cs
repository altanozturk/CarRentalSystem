using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KaosRentalSystem.Views.Customer
{
    public partial class Payback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            Response.AddHeader("REFRESH", "0;URL=PendingRentals.aspx");
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Payback will complete after controlled. Directing to Pending Page.');", true);
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("PendingRentals.aspx");
        }
    }
}