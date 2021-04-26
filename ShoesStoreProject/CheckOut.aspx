<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="ShoesStoreProject.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="jumbotron" style="background-color: #eeeeee6e">
        <h1>Order Checkout</h1>
        <p class="lead">Input order information here</p>
    </div>

     <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="images/187203-middle.png" />/>
                                </center>
                            </div>
                        </div>

                        <div class ="row">
                            <div class="col">
                                <center>
                                <h4 style="color: #FFFFFF">Check Out Information</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-4">
                                <label style="color: #FFFFFF">Shipping Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Shipping Address"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-4">
                                <label style="color: #FFFFFF">Country</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Country"></asp:TextBox>
                                </div>
                            </div>

                              <div class="col-md-4">
                                <label style="color: #FFFFFF">ZipCode</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Zip Code"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label style="color: #FFFFFF">City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-6">
                                <label style="color: #FFFFFF">Shipping Method</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Air or Sea"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-4">
                                <label style="color: #FFFFFF">Order Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Order Date"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-4">
                                <label style="color: #FFFFFF">Shipping Fee</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Shipping Fee"></asp:TextBox>
                                </div>
                            </div>

                              <div class="col-md-4">
                                <label style="color: #FFFFFF">Order Status</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Order Status"></asp:TextBox>
                                </div>
                            </div>
                        </div>



                         <div class="row">
                            <div class="col-md-6">
                                <label style="color: #FFFFFF">Tracking Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Tracking Number"></asp:TextBox>
                                </div>
                            </div>

                              <div class="col-md-6">
                                <label style="color: #FFFFFF">Total Cost</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Total Cost"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">                 
                              <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button2" runat="server" Text="Purchase" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
