<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="ShoesStoreProject.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color: #eeeeee6e">
        <h2>You Have The Following Shoes In Your Cart</h2>
        <p><a href="ShoeInventory.aspx" class="btn btn-primary btn-lg"> Continue Shopping &raquo;</a></p>
    </div>


 <div class="container">
         
                 
             <div class="row">
                        
                 <div class="col-sm-12 col-md-12">
                            <asp:Panel class="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="False">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </asp:Panel>
                        </div>
                    </div>
                    <asp:GridView class="table table-striped table-bordered" RowStyle-BackColor="Gray" Width="1056px" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                        <Columns>
                            
                            <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                            
                            
                        </Columns>

<RowStyle BackColor="Gray"></RowStyle>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT CartItem.ProductID, Product.Name, Product.Description, Product.Price, CartItem.Quantity FROM CartItem INNER JOIN Cart ON CartItem.CartID = Cart.CartID INNER JOIN Product ON CartItem.ProductID = Product.ProductID
WHERE (cartitem.CustomerID = @CustomerID)" DeleteCommand="delete from cartitems
where itemid = itemid" UpdateCommand="update cartitems
set quantity = @quantity
">
                        <SelectParameters>
                            <asp:SessionParameter Name="CustomerID" SessionField="CustomerID" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="quantity" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <div class="row">
                        <div class="card">
                            <div class="card-body">
 
                                <div class="row">
                                    <div class="col">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <center>
                    
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-warning" runat="server" Text="CheckOut" Width="125px" OnClick="Button1_Click" />
                    
                        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2" style="color: #ffffff" Height="52px" Width="271px" >
                            
                            
                            <EditItemTemplate>
                                Grand Total $:
                                <asp:TextBox ID="Grand_Total__TextBox" runat="server" Text='<%# Bind("[Grand Total $]") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Grand Total $:
                                <asp:TextBox ID="Grand_Total__TextBox" runat="server" Text='<%# Bind("[Grand Total $]") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            
                            
                            <ItemTemplate>
                             Grand Total $:
                                <asp:Label ID="Grand_Total__Label" runat="server" Text='<%# Bind("[Grand Total $]") %>' />
                                <br />
                                
                            </ItemTemplate>
                    </asp:FormView>
                    <span class="clearfix"></span>
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT SUM(c.Quantity * p.Price) AS [Grand Total $] FROM CartItem AS c INNER JOIN Product AS p ON p.ProductID = c.ProductID WHERE (c.CustomerID = @CustomerID)">
                         <SelectParameters>
                             <asp:SessionParameter Name="CustomerID" SessionField="CustomerID" />
                         </SelectParameters>
                                </asp:SqlDataSource>
                            <br />
                       
                        
            </div>
        </div>

</asp:Content>