using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KaosRentalSystem.Views.Customer
{
    public partial class PendingRentals : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowCars();            
        }
        Models.Functions Conn;
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
         
        private void ShowCars()
        {            
            string Query = "select * from RentTbl where customer= " + Login.CustId + "";
            CarList.DataSource = Conn.GetData(Query);
            CarList.DataBind();
        }
        
        private void ReturnCar()
        {
            try
            {


                string Query = "Delete from RentTbl where RentId={0}";
                Query = String.Format(Query, CarList.SelectedRow.Cells[1].Text);
                Conn.SetData(Query);

            }

            catch (Exception Ex)
            {
                // throw;
                //ErrorMsg.InnerText = Ex.Message;
            }
        }
        protected void CancelRentBtn_Click(object sender, EventArgs e)
        {
            try
            {
                //Burda arabayı seçmeden cancel olursa pat
                if (CarList.SelectedRow.Cells[1].Text == "")

                {
                    InfoMsg.InnerText = "Select a Car";
                }
                else
                {
                    
                    string Query = "insert into ReturnTbl values ('{0}','{1}','{2}','{3}',{4})";                    
                    Query = String.Format(Query, CarList.SelectedRow.Cells[2].Text, CarList.SelectedRow.Cells[3].Text, System.DateTime.Today.Date.ToString(),0,0);
                    Conn.SetData(Query);                    
                    ReturnCar();
                    UpdateCar();
                    ShowCars();

                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Directing to Payback Page.');", true);
                    Response.AddHeader("REFRESH", "2;URL=Payback.aspx");
                }
            }
            catch (Exception Ex)
            {
                // throw;
                InfoMsg.InnerText = Ex.Message;



            }
        }
        private void UpdateCar()
        {
            try
            {


                string Status = "Available";
                string Query = "update CarTbl set Status = '{0}' where CplateNum = '{1}'";
                Query = String.Format(Query, Status, CarList.SelectedRow.Cells[2].Text);
                Conn.SetData(Query);

                //ShowCars();


            }
            catch (Exception Ex)
            {
                // throw;
                InfoMsg.InnerText = Ex.Message;
            }
        }
    }
}