<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/ad.Master" AutoEventWireup="true" CodeBehind="Returns.aspx.cs" Inherits="KaosRentalSystem.Views.Admin.Returns" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-3"><img src ="../../Assets/Image/maxresdefault.jpg" height="120px" />
               <h1 class="text-warning"> Car Returned </h1>
            </div>
            <div class="col-md-3"></div>
        </div>
<div class="row">
    <div class="col-lg-12">
        <form runat="server">
                  <asp:GridView runat="server" ID="RentList" Class="table table-hover" AutoGenerateSelectButton="True">
                  <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />

                    </asp:GridView>      
          </form>
    </div>

</div>
    </div>
</asp:Content>
