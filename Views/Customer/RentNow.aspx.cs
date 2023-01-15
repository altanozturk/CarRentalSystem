using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KaosRentalSystem.Views.Customer
{
    public partial class RentNow : System.Web.UI.Page
    {
        
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCars();
            CustName.InnerText = Login.CName;
            Customer = Login.CustId;
            
            
        }
        
        private void ShowCars()
        {
            Label1.Text = Session["Value"].ToString();            
            String St = "Available";
            string Query = "select * from CarTbl where Model= + '" + Label1.Text + "' and status = '"+ St +"' ";                                        //"select * from CarTbl where Model= + '"+Label1.Text+ "'";
            
            CarList.DataSource = Conn.GetData(Query);
            CarList.DataBind();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
           
        }

        private void UpdateCar()
        {
            try
            {


                string Status = "Booked";
                string Query = "update CarTbl set Status = '{0}' where CplateNum = '{1}'";
                Query = String.Format(Query, Status, CarList.SelectedRow.Cells[1].Text);
                Conn.SetData(Query);
                ShowCars();


            }
            catch (Exception Ex)
            {
                // throw;
                InfoMsg.InnerText = Ex.Message;
            }
        }

        string LNumber, RentDate, RetDate;
        int Fees = 0, DPrice, Customer;
        protected void CarList_SelectedIndexChanged(object sender, EventArgs e)
        {
            LNumber = CarList.SelectedRow.Cells[1].Text;
            RentDate = System.DateTime.Today.Date.ToString();
            RetDate = ReturnDate.Value;
            DPrice = Convert.ToInt32(CarList.SelectedRow.Cells[4].Text);
        }

        protected void BookBtn_Click(object sender, EventArgs e)
        {
            TimeSpan DDays = Convert.ToDateTime(ReturnDate2.Value) - Convert.ToDateTime(ReturnDate.Value);
            int Days = DDays.Days;
            int Dprice;
            DPrice = Convert.ToInt32(CarList.SelectedRow.Cells[4].Text);
            int Fees = DPrice * Days;

            try
            {
                if (CarList.SelectedRow.Cells[1].Text == "")

                {
                    InfoMsg.InnerText = "Missing Information";
                }
                else
                {
                    string Query = "insert into RentTbl values ('{0}','{1}','{2}','{3}',{4})";
                    Query = String.Format(Query, CarList.SelectedRow.Cells[1].Text, Login.CustId, ReturnDate.Value, ReturnDate2.Value, Fees);
                    Conn.SetData(Query);
                    UpdateCar();
                    ShowCars();
                    InfoMsg.InnerText = "Car Reserved Directing to Payment Page";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Directing to Payment Page');", true);
                    Response.AddHeader("REFRESH", "0;URL=Payment.aspx");

                }
            }
            catch (Exception Ex)
            {
                // throw;
                InfoMsg.InnerText = Ex.Message;



            }
        }
    }
}