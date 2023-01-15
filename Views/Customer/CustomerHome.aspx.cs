using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KaosRentalSystem.Views.Customer
{
    public partial class CustomerHome : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
        }
        
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)    
        {
            Session["Value"] = "Mx5";
            Response.Cookies["Mx5"]["Value1"] = "Mx5"; 
            Response.Redirect("RentNow.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["Value"] = "Clio";
            Response.Cookies["Clio"]["Value1"] = "Clio";
            Response.Redirect("RentNow.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["Value"] = "308";
            Response.Cookies["308"]["Value1"] = "308";
            Response.Redirect("RentNow.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["Value"] = "Focus";
            Response.Cookies["Focus"]["Value1"] = "Focus";
            Response.Redirect("RentNow.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["Value"] = "Ceed";
            Response.Cookies["Ceed"]["Value1"] = "Ceed";
            Response.Redirect("RentNow.aspx"); 
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Session["Value"] = "Qashqai";
            Response.Cookies["Qashqai"]["Value1"] = "Qashqai";
            Response.Redirect("RentNow.aspx"); 
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Session["Value"] = "Egea";
            Response.Cookies["Egea"]["Value1"] = "Egea";
            Response.Redirect("RentNow.aspx"); 
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Session["Value"] = "320i";
            Response.Cookies["320i"]["Value1"] = "320i";
            Response.Redirect("RentNow.aspx");
        }
    }
}