<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="PendingRentals.aspx.cs" Inherits="KaosRentalSystem.Views.Customer.PendingRentals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <div class="container fluid">
   <div class="row">
       <div class="col"></div>
        <div class="col">
            <h2>Your Pending Rentals</h2>
        </div>
        <div class="col"></div>
   </div>
        <div class="row">
            <div class="col 12">
            
                <form runat="server">
                    <div class="col-md-8">                                
                    <asp:GridView runat="server" ID="CarList" Class="table table-hover" AutoGenerateSelectButton="True">
                        <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />

                    </asp:GridView>
                    </div>
                    <div class="col-4">
                            <div class="form-group d-grid">
        <label id="InfoMsg" runat="server" class="text-danger"></label>     
      <asp:Button type="submit" id="CancelRentBtn"  class="btn btn-warning btn-block" Text="Cancel Rent" runat="server" OnClick="CancelRentBtn_Click"/>
  
  </div>
                </form>
            </div>

            <div class="col-lg-2"></div>
        </div>
    </div>


</asp:Content>

