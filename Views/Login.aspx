<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="KaosRentalSystem.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="../Assets/Libraries/css/bootstrap.min.css"/>
</head>
<body>
    <div class="container-fluid">
        <div class ="row">
             <div class="col-md-3"></div>
            <div class="col-md-5">
                <div class="row mt-5">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-warning">Kaos Rental Login </h3>
                        <img src="../Assets/Image/indir.png" height="100 px" />
                        
                    </div>
                    <div class="col"></div>
                </div>
        
    <form runat="server">
                    <div class="form-group" runat="server" >
                        
                    
    <label for="exampleInputEmail1">ID</label>
    <input type="text" class="form-control" id="UserNameTb" aria-describedby="emailHelp" placeholder="Enter user ID" runat="server"/>
    
  </div>
  <div class="form-group">

    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="PasswordTb" placeholder="Password" runat="server"/>
  
       </div>
  <div class="form-group">
    <input type="radio" class="form-check-input" id="CustRadio" name="Role" runat="server" />
    <label class="form-check-label" for="exampleCheck1">Customer</label>

      <br/>

      <input type="radio" class="form-check-input" id="AdminRadio" name="Role" runat="server">
    <label class="form-check-label" for="exampleCheck1">Admin</label>
  </div>

  <div class="form-group d-grid">
     <label id="InfoMsg" runat="server" class="text-danger"></label>
      <asp:Button type="submit" id="SaveBtn"  class="btn btn-warning btn-block" Text="Login" runat="server" OnClick="SaveBtn_Click1"/>  
      <br />
      <h4>Dont you have an account ?</h4>
                        <asp:Button type="button" id="Register" OnClick="Register_Click" Class="btn btn-warning btn-block" Text="Register" runat="server"/>
               </div>
        
        
  </form>
                </div>
            <div class="col-md-3"></div>
            </div>
        </div>          
</body>
</html>
