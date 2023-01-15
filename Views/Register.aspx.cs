using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace KaosRentalSystem.Views
{
    public partial class Register : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            Conn = new Models.Functions();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {


                if (CustNameTb.Value == "" || PhoneTb.Value == "" || PasswordTb.Value == "" || AddTb.Value == "")

                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else if(PasswordTb.Value.Length < 8 )
                {

                    ErrorMsg.InnerText = "Password must be at least 8 characters long ";

                }
                else
                {

                    

                    




                    string sql = "select custname,custpassword,custid from customertbl where custname ='{0}' and custname='{1}'";
                    sql = string.Format(sql, CustNameTb.Value, CustNameTb.Value);
                    DataTable dt = Conn.GetData(sql);
                    if (dt.Rows.Count == 0)
                    {
                        string CustName = CustNameTb.Value;
                        string CustAdd = AddTb.Value;
                        string CustPhone = PhoneTb.Value;
                        string CustPass = PasswordTb.Value;
                        string Query = "insert into Customertbl values ('{0}','{1}','{2}','{3}')";
                        Query = String.Format(Query, CustName, CustAdd, CustPhone, CustPass);
                        Conn.SetData(Query);
                        ErrorMsg.InnerText = "Register Successful , directing Login Page in 3 Seconds";
                        Response.AddHeader("REFRESH", "3;URL=Login.aspx");

                       


                    }
                    else
                    {

                        ErrorMsg.InnerText = "Username Already Exist";
                        Response.AddHeader("REFRESH", "1;URL=Register.aspx");




                    }










                }
            }
            catch (Exception Ex)
            {
                // throw;
                ErrorMsg.InnerText = Ex.Message;
            }
        }

       
        

        protected void Login_Click(object sender, EventArgs e)
        {
            Response.AddHeader("REFRESH", "0;URL=Login.aspx");
            
        }
    }
}