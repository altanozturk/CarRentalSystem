<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="ContactInfo.aspx.cs" Inherits="KaosRentalSystem.Views.Customer.ContactInfo" %>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">



    <form runat="server">
  <div class="form-group">
    <label for="exampleFormControlInput1">Your E-mail Address</label>
    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
  </div>


  <div class="form-group">
    <label for="exampleFormControlSelect1">Your Number</label>
    <input type="number" class="form-control" id="exampleFormControlInput2">
  </div>


  <div class="form-group">
    <label for="exampleFormControlSelect2">Your Issue</label>

    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>
        <asp:Button type="submit" id="Button2" OnClick="Btn_Click" class="btn btn-danger" Text="Submit" runat="server" Height="53px" Width="116px"/>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <h1>Contact Info : Kaosrental@gmail.com</h1>
        <h1>Address : Işık University</h1>
        <h1>Number : 02165342342</h1>
        



 
</form>








</asp:Content>
