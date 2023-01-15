using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KaosRentalSystem.Views.Customer
{
    public partial class Payment : System.Web.UI.Page
    {
       

        protected void Submit_Click(object sender, EventArgs e)
        {

            Response.AddHeader("REFRESH", "2;URL=PendingRentals.aspx");
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Payment Completed');", true);
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("CustomerHome.aspx");
        }
    }
}