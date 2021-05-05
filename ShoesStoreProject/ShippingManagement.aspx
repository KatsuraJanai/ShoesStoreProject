﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShippingManagement.aspx.cs" Inherits="ShoesStoreProject.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="jumbotron" style="background-color: #eeeeee6e">
        <h1>Shipping</h1>
        <p class="lead">Manage Shipping Information here</p>
    </div>

<div class="container">
        <div class="row">
            <div class="col-md-5">
 
                <div class="card">
                    <div class="card-body">
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4 style="color: #FFFFFF">Order & Shippment Management</h4>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="300px" src="images/shipping.jpg" />
                                       
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
                                <label style="color: #FFFFFF">Tracking Number</label>
                                <div class="form-group">
                                    <div class="input-group">
                                       <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Tracking Number" ></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="Cardnum" runat="server" ControlToValidate="TextBox1" ValidationGroup="valForm" style="color:red" ErrorMessage="Tracking number is required." Display="Dynamic"> </asp:RequiredFieldValidator>
                                           
                                            <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
 
                            <div class="col-md-8">
                                <label style="color: #FFFFFF">Shipping Status</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Shipping Status"></asp:TextBox>
 
                                </div>
                            </div>
                        </div>

                        
 
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Update Order" OnClick="Button2_Click" />
                            </div>
                 
                        </div>
 </div>
 </div>
                    </div>
                </div>



<div class="container">
        <div class="row">
            <div class="col-md-5">
 

 
                <div class="card">
                    <div class="card-body">
 
 
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4 style="color: #FFFFFF">All Orders</h4>
                                    </center>
                            </div>
                        </div>
                   
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                            <asp:GridView  class="table table-striped table-bordered" AlternatingRowStyle-BackColor="YellowGreen" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" Width="600px" AllowPaging="True">
<AlternatingRowStyle BackColor="YellowGreen"></AlternatingRowStyle>
                                            <Columns>
                                                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                                <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                                                <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                                                <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" SortExpression="TotalCost" />
                                                
                                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                                                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                                                <asp:BoundField DataField="ShippingFee" HeaderText="ShippingFee" SortExpression="ShippingFee" />
                                                <asp:BoundField DataField="ShippingMethod" HeaderText="ShippingMethod" SortExpression="ShippingMethod" />
                                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                                <asp:BoundField DataField="TrackingNumber" HeaderText="TrackingNumber" SortExpression="TrackingNumber" />
                                                <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" />
                                                
                                            </Columns>

<RowStyle BackColor="Gray"></RowStyle>
                                        </asp:GridView>
                        </div>
 
 
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Order].Status, Product.Name, Product.Description, [Order].OrderID, [Order].OrderDate, [Order].TotalCost, [Order].Address, [Order].ZipCode, [Order].Country, [Order].ShippingFee, [Order].ShippingMethod, [Order].City, [Order].TrackingNumber, Product.ImagePath FROM OrderDetails INNER JOIN [Order] ON OrderDetails.OrderID = [Order].OrderID INNER JOIN Product ON OrderDetails.ProductID = Product.ProductID
">
                    </asp:SqlDataSource>
                </div>
 
 
            </div>
 
        </div>

    </div>
 
     </div>
</asp:Content>
