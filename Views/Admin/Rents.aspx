<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/ad.Master" AutoEventWireup="true" CodeBehind="Rents.aspx.cs" Inherits="KaosRentalSystem.Views.Admin.Rents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <%--üst satırdaki navbar kısmı ContentPlaceHolderId = head olursa sayfanın en altında = mybody olursa sayfanın en üstünde çıkıyor--%>
    

    <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-5"></div>
                            <div class="col-6">
                                <h3 class="text-danger pl-4">Rented Cars</h3>
                                <img src="../../Assets/Image/rentedcar.png" height="180px"</div>
                            <div class="col"></div>
                        </div>
                        <div class="row">
                            <div class="col-lg-1"></div>

                            <div class="col-lg-9">
                                <form runat="server">
                                     <asp:GridView runat="server" ID="RentList" Class="table table-hover" AutoGenerateSelectButton="True">
                        <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />

                    </asp:GridView>

                                <div class="form-group">
    <input type="text" class="form-control" id="DelayTb"  runat="server" >
    <label class="form-check-label" for="exampleCheck1">Delay</label>
      <br></br>
      <input type="text" class="form-control" id="FineTb"  runat="server">
    <label class="form-check-label" for="exampleCheck1">Fine</label>
  </div>
                                        

                                 
                                    
                                    
                                     <div class="form-group d-grid">
     <label id="InfoMsg" runat="server" class="text-danger"></label>
      <asp:Button type="submit" id="SaveBtn"  class="btn btn-danger btn-block" Text="Return" runat="server" OnClick="SaveBtn_Click1" Height="49px" Width="155px" />  
  </div>
                                    
                                </form>



                            </div>
                        </div>



                    </div>
                   
                </div>
            </div>

</asp:Content>
