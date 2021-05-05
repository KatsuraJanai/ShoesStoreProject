<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FinalPayment.aspx.cs" Inherits="ShoesStoreProject.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="jumbotron" style="background-color: #eeeeee6e">
        <h1>Payment</h1>
        <p class="lead">Complete Transaction by inputing banking information</p>
        <p><a href="CheckOut.aspx" class="btn btn-primary btn-lg"> Go Back &raquo;</a></p>
   </div>

         <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="images/187203-middle.png" />
                                </center>
                            </div>
                        </div>

                        <div class ="row">
                            <div class="col">
                                <center>
                                <h4 style="color: #FFFFFF">Shipping Address</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                         
                            <div class="col-md-8">
                                <label style="color: #FFFFFF">Shipping Address Line 1</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Line 1"></asp:TextBox>
                                    <asp:RequiredFieldValidator  CssClass="valid"  ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address is required" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            
                            <div class="col-md-8">
                                <label style="color: #FFFFFF">Shipping Address Line 2</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Line 2"></asp:TextBox>
                                </div>
                            </div>

                             <div class="row">

                             <div class="col-md-8">
                                <label style="color: #FFFFFF">Country</label>
                                <div class="form-group">
                                    <asp:DropDownList runat="server" CssClass="form-control" ID="countryList">
                                        <asp:ListItem Text="Select" Value="select" Enabled="false" />
                                        <asp:ListItem Text="Afghanistan" Value="Afghanistan" />
                                        <asp:ListItem Text="Argentina" Value="Argentina" />
                                        <asp:ListItem Text="Brazil" Value="Brazil"></asp:ListItem>
                                        <asp:ListItem Text="China" Value="China"></asp:ListItem>
                                        <asp:ListItem Text="Germany" Value="Germany"></asp:ListItem>
                                        <asp:ListItem Text="Jamaica" Value="Jamaica"></asp:ListItem>
                                        <asp:ListItem Text="United States" Value="United States"></asp:ListItem>
                                        </asp:DropDownList>

                                </div>
                            </div>

                              <div class="col-md-8">
                                <label style="color: #FFFFFF">ZipCode</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Zip Code"></asp:TextBox>
                                    <asp:RequiredFieldValidator  CssClass="valid"  ID="RequiredFieldValidator6" runat="server" ErrorMessage="Zip Code is required" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-8">
                                <label style="color: #FFFFFF">City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="City"></asp:TextBox>
                                    <asp:RequiredFieldValidator  CssClass="valid"  ID="RequiredFieldValidator7" runat="server" ErrorMessage="City is required" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
                                </div>
                            </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="250" src="images/cardout.png" />
                                </center>
                            </div>
                        </div>

                        <div class ="row">
                            <div class="col">
                                <center>
                                <h4 style="color: #FFFFFF">Payment Information</h4>
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
                                <label style="color: #FFFFFF">Name on Card</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name on Card"></asp:TextBox>
                                    <asp:RequiredFieldValidator  CssClass="valid"  ID="name" runat="server" ErrorMessage="Card Holder Name is required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                             <div class="col-md-4">
                                <label style="color: #FFFFFF">Card Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="XXXX-XXXX-XXXX-XXXX"></asp:TextBox>
                                    <asp:RequiredFieldValidator  CssClass="valid"  ID="RequiredFieldValidator1" runat="server" ErrorMessage="A Card Number is required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                              <div class="col-md-4">
                                <label style="color: #FFFFFF">CVV</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="CVV" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator  CssClass="valid"  ID="RequiredFieldValidator2" runat="server" ErrorMessage="CVV Number is required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label style="color: #FFFFFF">Card Expiry Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Expiry Date" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator  CssClass="valid"  ID="RequiredFieldValidator3" runat="server" ErrorMessage="Expiry Date is required" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                             <div class="col-md-6">
                                <label style="color: #FFFFFF">Total Cost</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Total" Enabled="False"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                         
                        </div>

                         <div class="row">                 
                              <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button2" runat="server" Text="Complete Order" OnClick="Button2_Click"/>
                                </div>
                            </div>
                        </div>

                 
                </div>
            </div>

        </div>
    </div>

     </div>
     </div>
     </div>
</asp:Content>
