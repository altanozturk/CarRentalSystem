using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace KaosRentalSystem.Views.Customer
{
    public partial class Profile : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCustomers();
        }
        private void ShowCustomers()
        {
            string Query = "select * from CustomerTbl where CustId = " + Login.CustId + "";
            CustomerList.DataSource = Conn.GetData(Query);
            CustomerList.DataBind();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        int Key = 0;
        protected void CustomerList_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            AddTb.Value = CustomerList.SelectedRow.Cells[3].Text;
            PhoneTb.Value = CustomerList.SelectedRow.Cells[4].Text;
            PasswordTb.Value = CustomerList.SelectedRow.Cells[5].Text;
           
           
        }
        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if ( PhoneTb.Value == "" || PasswordTb.Value == "" || AddTb.Value == "")

                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else if (PasswordTb.Value.Length < 8)
                {

                    ErrorMsg.InnerText = "Password must be at least 8 characters long ";

                }
                else
                {


                    
                        
                        
                        string CustAdd = AddTb.Value;
                        string CustPhone = PhoneTb.Value;
                        string CustPass = PasswordTb.Value;
                        string Query = "update CustomerTbl set CustAdd = '{0}',CustPhone = '{1}',CustPassword = '{2}' where CustId = {3}";
                        Query = String.Format(Query, CustAdd, CustPhone, CustPass, Convert.ToInt32(CustomerList.SelectedRow.Cells[1].Text));
                        Conn.SetData(Query);
                        ShowCustomers();
                        ErrorMsg.InnerText = "Customer Edited";
                    
                   
                }
            }
            catch (Exception Ex)
            {
                // throw;
                ErrorMsg.InnerText = Ex.Message;
            }
        }
    }
    }
