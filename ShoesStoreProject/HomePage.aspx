<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ShoesStoreProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color: #eeeeee6e">
        <h1>EliteKicks</h1>
        <h1><asp:LinkButton ID="LinkButton13" runat="server" Visible="False" style="color:white">Hello User</asp:LinkButton></h1>
        <p class="lead">Check out our shoes here</p>
        <p><a href="ShoeInventory.aspx" class="btn btn-primary btn-lg">View Shoes &raquo;</a></p>
    </div>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img class="d-block w-100" src="images/carousel1.jpg" alt="NIKE">
    </div>

    <div class="item">
      <img class="d-block w-100" src="images/carousel2.jpg" alt="Converse">
    </div>

    <div class="item">
      <img class="d-block w-100" src="images/last%20one.jpg" alt="New York">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    <br />

  
    <div class="container-fluid">
     <h2 style="color: #FFFFFF"> Shoe Brands </h2>
    <div class="row" style="color: #c0c0c0">
        <div class="col-md-4">
            <div class="container">
                 <h2 style="color: #FFFFFF">Nike</h2>
                  <img src="images/nG.gif" class="img-thumbnail" alt="nike" width="304" height="236" style="background-color: #ffffff00; border-top-color: #ffffff00; border-right-color: #ffffff00; border-bottom-color: #ffffff00; border-left-color: #ffffff00;"/> 
            </div>
        </div>

        <div class="col-md-4">
             <div class="container">
                 <h2 style="color: #FFFFFF">Adidas</h2>
                  <img src="images/Ag.gif" class="img-thumbnail" alt="adidas" width="304" height="300" style="background-color: #ffffff00; border-top-color: #ffffff00; border-right-color: #ffffff00; border-bottom-color: #ffffff00; border-left-color: #ffffff00;"/> 
             </div>
           
        </div>
        <div class="col-md-4">
             <div class="container">
                 <h2 style="color: #FFFFFF">Jordan</h2>
                 <img src="images/Jg.gif" class="img-thumbnail" alt="Jordan" width="304" height="236" style="background-color: #ffffff00; border-top-color: #ffffff00; border-right-color: #ffffff00; border-bottom-color: #ffffff00; border-left-color: #ffffff00;"/>
             </div>
        </div>
     </div>
   </div>

</asp:Content>
