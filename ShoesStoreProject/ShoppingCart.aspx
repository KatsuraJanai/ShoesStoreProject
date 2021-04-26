<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="ShoesStoreProject.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color: #eeeeee6e">
        <h2>You Have The Following Shoes In Your Cart</h2>
        <p><a href="ShoeInventory.aspx" class="btn btn-primary btn-lg"> Continue Shopping &raquo;</a></p>
    </div>

    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
