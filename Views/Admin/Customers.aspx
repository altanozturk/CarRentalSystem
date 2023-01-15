<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/ad.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="KaosRentalSystem.Views.Admin.Customers" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
     <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4">
                        <div class="row">
                            <div class="col"></div>
                            <div class="col">
                                <h4 class="text-danger pl-4">Manage Customers</h4>
                                <img src="../../Assets/Image/customer.jpg"</div>
                            <div class="col"></div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <form runat="server">
                                    <div class="form-group">
                                        

                                    </div>
                                    <div class="form-group"> 
                                        <label for="exampleInputEmail1">Customer Address</label>
                                        <input type="text" class="form-control" id="AddTb"  placeholder="Enter Customer's Address" runat="server">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Customer Phone</label>
                                        <input type="text" class="form-control" id="PhoneTb"  placeholder="Enter Phone" runat="server">
                                    </div>

                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Customer Password</label>
                                        <input type="text" class="form-control" id="PasswordTb"  placeholder="Enter Password" runat="server">
                                    </div>
                                    
                                        

                                 <br />

                                    
                                   <label id="ErrorMsg" runat="server" class="text-danger"></label><br />
                                    <asp:Button type="submit" id="EditBtn" OnClick="EditBtn_Click" class="btn btn-danger" Text="Edit" runat="server" Height="43px" Width="88px"/>
                                    
                                    <asp:Button type="submit" id="DeleteBtn" OnClick="DeleteBtn_Click" class="btn btn-danger" Text="Delete" runat="server" Height="43px" Width="99px"/>
                                </form>



                            </div>
                        </div>



                    </div>
                    <div class="col-md-8">
                        <h1>Customer List</h1>
                    <asp:GridView runat="server" ID="CustomerList" Class="table-hover" AutoGenerateSelectButton="True" Width="1332px" OnSelectedIndexChanged="CustomerList_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />

                    </asp:GridView>
                    </div>
                </div>
            </div>
</asp:Content>
