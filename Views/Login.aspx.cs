using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KaosRentalSystem.Views
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
        }
        public static string CName = "";
        public static int  CustId;
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            if(AdminRadio.Checked)
            {

            }else
            {
                string sql = "select custname,custpassword from customertbl where custname ='{0}' and custpassword='{1}'";
                    sql = string.Format(sql, UserNameTb.Value, PasswordTb.Value);
                DataTable dt = Conn.GetData(sql);
                if(dt.Rows.Count==0)
                {
                    //lblMsg.Text="Invalid User";
                }
                else
                {
                    CName = dt.Rows[0][0].ToString();
                    //Response Redirect();
                }
                }
        }

        protected void SaveBtn_Click1(object sender, EventArgs e)
        {
            if (AdminRadio.Checked)
            {
                if(UserNameTb.Value == "Admin" && PasswordTb.Value == "Admin")
                {
                    CName = "Admin";
                    Response.Redirect("Admin/Home.aspx");
                }
                else
                {
                    InfoMsg.InnerText = "Invalid Admin !!!";
                }
            }
            else
            {
                string sql = "select custname,custpassword,custid from customertbl where custname ='{0}' and custpassword='{1}'";
                sql = string.Format(sql, UserNameTb.Value, PasswordTb.Value);
                DataTable dt = Conn.GetData(sql);
                if (dt.Rows.Count == 0)
                {
                    InfoMsg.InnerText="Invalid Customer User !!!";
                }
                else
                {
                    CName = dt.Rows[0][0].ToString();
                    CustId = Convert.ToInt32(dt.Rows[0][2].ToString());
                    Response.Redirect("Customer/CustomerHome.aspx");
                }
            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.AddHeader("REFRESH", "0;URL=Register.aspx");
        }
    }
}