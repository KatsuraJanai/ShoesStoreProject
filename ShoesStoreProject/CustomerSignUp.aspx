<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerSignUp.aspx.cs" Inherits="ShoesStoreProject.CustomerSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="images/register.png" />
                                </center>
                            </div>
                        </div>

                        <div class ="row">
                            <div class="col">
                                <center>
                                <h4 style="color: #FFFFFF">Customer Sign Up</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-6">
                                <label style="color: #FFFFFF">First Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-6">
                                <label style="color: #FFFFFF">Last Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label style="color: #FFFFFF">Email Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Email Address"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-6">
                                <label style="color: #FFFFFF">Phone </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Phone"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-6">
                                <label style="color: #FFFFFF">Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Address"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-6">
                                <label style="color: #FFFFFF">Country</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Country"></asp:TextBox>
                                </div>
                            </div>
                        </div>



                         <div class="row">
                            <div class="col-md-6">
                                <label style="color: #FFFFFF">Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Email Address"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-6">
                                <label style="color: #FFFFFF">Country</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Phone"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
