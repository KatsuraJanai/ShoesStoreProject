﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerLogin.aspx.cs" Inherits="ShoesStoreProject.CustomerLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class ="Container">
        <!--<div class="Row">
            <div class="col-md-6 mx-auto">-->

                <div class="card">
                    <br>
                     <div class="card-body" style="background-color: #eeeeee6e">

                         <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="150px" src="Images/loginicon.png"/>
                                    </center>
                                </div>
                         </div>

                          <div class="row">
                                <div class="col">
                                    <center>
                                        <h3 style="color: #FFFFFF"> Customer Login</h3>
                                    </center>
                                </div>
                         </div>

                         <center>
                         <div class="row">
                                <div class="col">
                                    <label style="color: #FFFFFF">Customer Username</label>
                                    <div class="form-group">
                                        <asp:TextBox cssclass="form-control" ID="TextBox1" runat="server" placeholder="Username" ></asp:TextBox>
                                    </div>

                                    <label style="color: #FFFFFF">Password</label>
                                    <div class="form-group">
                                        <asp:TextBox cssclass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click1" />
                                    </div>

                                    <div class="form-group">
                                         <asp:Button class="btn btn-secondary btn-block btn-lg" ID="Button2" runat="server" Text="Sign Up" OnClick="Button2_Click" />
                                    </div>

                                </div>
                         </div>
                         </center>
                        </div>
                     </div>
                <a href="Site.Master"><<< Back to Home Page</a>
                <br />
               <!-- </div>
            </div>-->
        </div>

</asp:Content>
