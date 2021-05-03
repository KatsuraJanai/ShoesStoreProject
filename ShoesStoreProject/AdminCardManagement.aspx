<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminCardManagement.aspx.cs" Inherits="ShoesStoreProject.AdminProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container">
        <div class="row">
            <div class="col-md-5">
 
                <div class="card">
                    <div class="card-body">
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4 style="color: #FFFFFF">Card Management</h4>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="250px" src="images/card.jpg" />
                                       
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col-md-4">
                                <label style="color: #FFFFFF">Card Number</label>
                                <div class="form-group">
                                    <div class="input-group">
                                       <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Card Number" ></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="Cardnum" runat="server" ControlToValidate="TextBox1" ValidationGroup="valForm" style="color:red" ErrorMessage="A Card Number is required." Display="Dynamic"> </asp:RequiredFieldValidator>
                                           <asp:RangeValidator ID="Cardnumber" runat="server" ControlToValidate="TextBox1" ValidationGroup="valForm" Type="Double" MinimumValue="9999999999"   MaximumValue ="10000000000000" style="color:red" ErrorMessage="Please enter a valid Card number of a Minimum of 13 Digits." Display="Dynamic">
                                           </asp:RangeValidator>
                                            <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
 
                            <div class="col-md-8">
                                <label style="color: #FFFFFF">Card Holder Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Card Holder"></asp:TextBox>
 
                                </div>
                            </div>
                        </div>

                        
 
                            <div class="col-md-8">
                                <label style="color: #FFFFFF"> CVV</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="CVV" TextMode="Password"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ValidationGroup="valForm" style="color:red" ErrorMessage="A CVV Number is required." Display="Dynamic"> </asp:RequiredFieldValidator>
                                           <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ValidationGroup="valForm" Type="Double" MinimumValue="1"   MaximumValue ="999" style="color:red" ErrorMessage="Please enter a valid CVV number of a Maximum of 3 Digits." Display="Dynamic">
                                           </asp:RangeValidator>
 
                                </div>
                            </div>
                        </div>

                        
                        <div class="row">
                        <div class="col-md-8">
                                <label style="color: #FFFFFF">Expiry Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Expiry Date" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ValidationGroup="valForm" style="color:red" ErrorMessage="An expiry date is required." Display="Dynamic"> </asp:RequiredFieldValidator>
 
                                </div>
                            </div>
                            </div>

                        <div class="row">
                        <div class="col-md-8">
                                <label style="color: #FFFFFF">Card Balance</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Balanace"></asp:TextBox>
 
                                </div>
                            </div>
                            </div>
 
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                        </div>
 
 
                    </div>
                </div>
 
                
 
            <div class="col-md-7">
 
                <div class="card">
                    <div class="card-body">
 
 
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4 style="color: #FFFFFF">Active Cards</h4>
                                    </center>
                            </div>
                        </div>
                   
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                            <asp:GridView style="color: #FFFFFF" class="table table-striped table-bordered" RowStyle-BackColor="Gray" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CardID" DataSourceID="SqlDataSource1" Width="600px" AllowPaging="True">
                                            <Columns>
                                                <asp:BoundField DataField="CardID" HeaderText="CardID" ReadOnly="True" SortExpression="CardID" InsertVisible="False">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="CardHolderName" HeaderText="CardHolderName" SortExpression="CardHolderName" />
                                                <asp:BoundField DataField="CardNumber" HeaderText="CardNumber" SortExpression="CardNumber" />
                                                <asp:BoundField DataField="CVV" HeaderText="CVV" SortExpression="CVV" />
                                                <asp:BoundField DataField="ExpiryDate" HeaderText="ExpiryDate" SortExpression="ExpiryDate" />
                                                <asp:BoundField DataField="AmountOnCard" HeaderText="AmountOnCard" SortExpression="AmountOnCard" />
                                                
                                            </Columns>
                                        </asp:GridView>
                        </div>
 
 
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Card]"></asp:SqlDataSource>
                </div>
 
 
            </div>
 
        </div>

    </div>
</asp:Content>
