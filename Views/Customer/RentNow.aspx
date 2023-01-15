<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="RentNow.aspx.cs" Inherits="KaosRentalSystem.Views.Customer.RentNow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
     <div class="container-fluid">
        <div class="row">
            
            <div class="col-md-10"></div>
            
            <div class="col-md-1">
                
             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>   
             

                <p><font face="tahoma" size="5" color="maroon"  >
                <b>Hoşgeldiniz</b> 
                
                
                   </font></p>

                <p><font face="tahoma" size="4" color="maroon">
                <b><label id="CustName" runat="server"></label></b>

                   </font></p>
                

            </div>

        </div>


        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-5 ml-3"><img src="../../Assets/Image/rentedcar.png" height="180 px"</div>
            


            </div>

        </div>
        
        <center><div class="row">
            <div class="col-md-3"></div>
            <div class="col-4">
                <form runat="server">
                    <div class="row">
                        <div class="col-2"></div>
                        <div class="col-8"><h3 class="text-warning">Available Cars</h3></div>
                    </div>
                      <div class="col-md-4">                                
                    <asp:GridView runat="server" ID="CarList" Class="table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CarList_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />

                    </asp:GridView>
                    </div>
                    
                    <div class="row">
                        <div class="col-10">
                            <div class="form-group">
    
    <h1>Start Date</h1>
    <input type="date" class="form-control" id="ReturnDate" placeholder="Password" runat="server" required="required" >
    <h1>End Date</h1>
    <input type="date" class="form-control" id="ReturnDate2" placeholder="Password" runat="server" required="required" >  
       </div>
                        </div>
                        <div class="col-4">
                            <div class="form-group d-grid">
        <label id="InfoMsg" runat="server" class="text-danger"></label>     
      <asp:Button type="submit" id="BookBtn"  class="btn btn-warning btn-block" Text="Book" runat="server" OnClick="BookBtn_Click"  />
                               
  
  </div>
                            
                        </div>
                    </div>

                </form>
                



       </div>

        </div>
            </center>
        
</asp:Content>
