<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="ShoesStoreProject.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
     <div class ="Container">
            <div class="col-md-6 mx-auto" >
                <div class="card" style="background-color: #eeeeee6e">
                     <div class="card-body">

                         <div class="row">
                                <div class="col text-center">

                                        <img width="100" src="Images/loginicon.png" />
                                   
                                </div>
                         </div>

                          <div class="row">
                                <div class="col text-center">
                                    
                                        <h3> Admin Login</h3>
                                   
                                </div>
                          </div>

                         <center>
                         <div class="row">
                                <div class="col">
                                    <label>Admin ID</label>
                                    <div class="form-group">
                                        <asp:TextBox cssclass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID" ></asp:TextBox>
                                    </div>

                                    <label>Password</label>
                                    <div class="form-group">
                                        <asp:TextBox cssclass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"  />
                                    </div>

                                </div>
                         </div>
                         </center>
                        </div>
                     </div>
                <a href="default.aspx"><<< Back to Home Page</a>
                <br />
               </div>
         </div>
    

</asp:Content>
