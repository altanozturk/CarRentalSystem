<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/ad.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="KaosRentalSystem.Views.Admin.Cars" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">

    
    

    <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4">
                        <div class="row">
                            <div class="col"></div>
                            <div class="col">
                                <h3 class="text-danger pl-4">Manage Cars</h3>
                                <img src="../../Assets/Image/car.jpg" height="130px"</div>
                            <div class="col"></div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <form runat="server">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Licence Number</label>
                                        <input type="text" class="form-control" id="LNumberTb"  placeholder="Enter Plate Number" runat="server">

                                    </div>
                                    <div class="form-group"> 
                                        <label for="exampleInputEmail1">Brand</label>
                                        <input type="text" class="form-control" id="BrandTb"  placeholder="Enter The Car's Brand" runat="server">

                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Model</label>
                                        <input type="text" class="form-control" id="ModelTb"  placeholder="Enter Model" runat="server">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Daily Price</label>
                                        <input type="text" class="form-control" id="PriceTb"  placeholder="Enter PriceTb" runat="server">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Color</label>
                                        <input type="text" class="form-control" id="ColorTb"  placeholder="Enter Color" runat="server">
                                       
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Available</label>

                                        <asp:DropDownList ID="AvailableCb" runat="server"  class="form-control">  <%--form-control butonu oluşturuyor--%>
                                            <asp:ListItem>Available</asp:ListItem>
                                            <asp:ListItem>Booked</asp:ListItem>

                                        </asp:DropDownList>

                                       

                                    </div>
                                    
                                   

                                    <label id="ErrorMsg" runat="server" class="text-danger"></label><br />
                                    <asp:Button type="submit" id="EditBtn" OnClick="EditBtn_Click" class="btn btn-danger" Text="Edit" runat="server" Height="38px" Width="61px"/>
                                    <asp:Button type="submit" id="SaveBtn" OnClick="SaveBtn_Click" Class="btn btn-danger" Text="Save" runat="server" Height="38px"/>
                                    <asp:Button type="submit" id="DeleteBtn" OnClick="DeleteBtn_Click" class="btn btn-danger" Text="Delete" runat="server" Height="38px" Width="85px"/>
                                    
                                </form>



                            </div>
                        </div>

                    </div>
                    <div class="col-md-8">
                        <center><h1>Car List</h1></center>
                    <asp:GridView runat="server" ID="CarList" Class="table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CarList_SelectedIndexChanged1" Width="1332px">
                        <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />
                        
                    </asp:GridView>
                    </div>
                </div>
            </div>

</asp:Content>
