<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="KaosRentalSystem.Views.Register" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="../Assets/Libraries/css/bootstrap.min.css"/>
</head>
 <center><div class="container-fluid">
               <div class="row-md-5">
                    <div class="col-md-8">
                        <div class="row-md">
                            <div class="col"></div>
                            <div class="col-md-10">
                                <h3 class="text-warning">Kaos Rental Register </h3>
                                <img src="../Assets/Image/indir.png" height="50 px" />
                                
                            <div class="col"></div>
                        </div> 
                         </center>

                               <center><form runat="server">

                                    <br />
                                   <div class="form-group">

                                       <div class="form-group">
                                        <label for="exampleInputEmail1">Enter your name as ID : </label>
                                        <input type="text" class="form-control" id="CustNameTb"  placeholder="Enter Your Name" runat="server">

                                    </div>
                                    <div class="form-group"> 
                                        <label for="exampleInputEmail1">Address : </label>
                                        <input type="text" class="form-control" id="AddTb"  placeholder="Enter Your Address" runat="server">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Phone : </label>
                                        <input type="text" class="form-control" id="PhoneTb"  placeholder="Enter Your Phone" runat="server">
                                    </div>

                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Password : </label>
                                        <input type="text" class="form-control" id="PasswordTb"  placeholder="Enter Your Password" runat="server">
                                    </div>
                                    
                                        
                                      

                                 <br />

                                    
                                   <label id="ErrorMsg" runat="server" class="text-danger"></label><br/>
                                    
                                    <asp:Button type="submit" id="SaveBtn" OnClick="SaveBtn_Click" Class="btn btn-warning btn-block" Text="Register" runat="server"/>
                                       <h4>Already Have an Account ?</h4>
                                    <asp:Button type="submit" id="Button1" OnClick="Login_Click" Class="btn btn-warning btn-block" Text="Login" runat="server"/>
                                        </div>


                                </form> 


                       
                    </asp:GridView>
                    </div>
                </div>
            </div>
</html>
