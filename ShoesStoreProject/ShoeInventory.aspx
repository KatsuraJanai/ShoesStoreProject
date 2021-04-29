<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoeInventory.aspx.cs" Inherits="ShoesStoreProject.ShoeInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="jumbotron" style="background-color: #66000000">
        <h1 style="color: #FFFFFF">Shoe Inventory</h1>
        <p  style="color: #FFFFFF" class="lead">Buy now while stocks last</p>
    </div>

    <div id="PopularBrands" class="container">
    <h1 style="color: #ffffff">Popular Brands</h1>
        <br />
    <div class="row" style="color: #FFFFFF">
        <div class="col-md-4">
            <div id="AirMax" class="container">
                 <h2>NIKE</h2>
                <br /> <br /> 
                <img src="Images/Airmax.png" class="img-thumbnail" alt="AirMax" width="304" height="236" style="border-color: #ffffff00; background-color: #ffffff00; "/> 
                <br /> <br /> <br /> <br /> <br />
                <p> ID: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 1234<br />
                    Name: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Air Max 97<br />
                    Description: &nbsp Black<br />
                    Price: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp $ 470<br />
                </p>
                <p><a><asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-primary btn-lg" > Add to cart &raquo;</asp:LinkButton></a></p> 
                <p><a><asp:DropDownList ID="DropDownList4" runat="server" class="btn btn-primary btn-lg">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList></a></p>     
             </div>
        </div>

        <div class="col-md-4">
            <div id="Yeezy" class="container">
                 <h2>Adidas</h2>
                <br /> <br />
                <img src="Images/yeezy.png" class="img-thumbnail" alt="Yeezy" width="304" height="236" style="border-color: #ffffff00; background-color: #ffffff00; "/> 
                <br /> <br />
                <p> ID: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 5050<br />
                    Name: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Yeezy Boost 350 V2<br />
                    Description: &nbsp Clay<br />
                    Price: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp $ 400<br />
                </p>
                <p><a><asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-primary btn-lg" > Add to cart &raquo;</asp:LinkButton></a></p> 
                <p><a><asp:DropDownList ID="DropDownList1" runat="server" class="btn btn-primary btn-lg">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList></a></p>     
             </div>
        </div>          


        <div class="col-md-4">
            <div id="Jordan" class="container">
                 <h2>Jordan</h2>
                <br /> <br />
                <img src="Images/jordan.jpg" class="img-thumbnail" alt="Range Rover Sport" width="304" height="236" style="border-color: #ffffff00; background-color: #ffffff00; "/> 
                <br /> <br />
                <p> ID: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 1212<br />
                    Name: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Air Jordan 12 Retro<br />
                    Description: &nbsp Easter White<br />
                    Price: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp $ 250<br />
                </p>
                <p><a><asp:LinkButton ID="LinkButton3" runat="server" class="btn btn-primary btn-lg" > Add to cart &raquo;</asp:LinkButton></a></p> 
                <p><a><asp:DropDownList ID="DropDownList2" runat="server" class="btn btn-primary btn-lg">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList></a></p>     
             </div>
        </div>
      </div>
    </div>

    <br /><br />

    <div id="Designer" class="container">
    <h1 style="color: #ffffff">Designer Shoes</h1>
        <br />
    <div class="row" style="color: #FFFFFF">
        <div class="col-md-4">
            <div id="des" class="container">
                 <h2>GUCCI</h2>
                <br /> <br /> 
                <img src="Images/Gucci.jpg" class="img-thumbnail" alt="AirMax" width="304" height="236" style="border-color: #ffffff00; background-color: #ffffff00; "/> 
                <br /> <br /> 
                <p> ID: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 7777<br />
                    Name: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Gucci Ace<br />
                    Description: &nbsp Black<br />
                    Price: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp $ 720<br />
                </p>
                <p><a><asp:LinkButton ID="LinkButton4" runat="server" class="btn btn-primary btn-lg" > Add to cart &raquo;</asp:LinkButton></a></p> 
                <p><a><asp:DropDownList ID="DropDownList3" runat="server" class="btn btn-primary btn-lg">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList></a></p>     
             </div>
        </div>

        <div class="col-md-4">
            <div id="Bal" class="container">
                 <h2>Balenciaga</h2>
                <br /> <br />
                <img src="Images/speed.jpg" class="img-thumbnail" alt="Yeezy" width="304" height="236" style="border-color: #ffffff00; background-color: #ffffff00; "/> 
                <br /> <br />
                <p> ID: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 1991<br />
                    Name: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Speed 2.0<br />
                    Description: &nbsp Black<br />
                    Price: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp $ 850<br />
                </p>
                <p><a><asp:LinkButton ID="LinkButton5" runat="server" class="btn btn-primary btn-lg" > Add to cart &raquo;</asp:LinkButton></a></p> 
                <p><a><asp:DropDownList ID="DropDownList5" runat="server" class="btn btn-primary btn-lg">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList></a></p>     
             </div>
        </div>          


        <div class="col-md-4">
            <div id="CHR" class="container">
                 <h2>Christian Louboutin</h2>
                <br /> <br />
                <img src="Images/louboutin.jpg" class="img-thumbnail" alt="Range Rover Sport" width="304" height="236" style="border-color: #ffffff00; background-color: #ffffff00; "/> 
                <br /> <br />
                <p> ID: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 6060<br />
                    Name: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Louis Junior Low Top <br />
                    Description: &nbsp Black<br />
                    Price: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp $ 795<br />
                </p>
                <p><a><asp:LinkButton ID="LinkButton6" runat="server" class="btn btn-primary btn-lg" > Add to cart &raquo;</asp:LinkButton></a></p> 
                <p><a><asp:DropDownList ID="DropDownList6" runat="server" class="btn btn-primary btn-lg">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList></a></p>     
             </div>
        </div>
      </div>
    </div>

</asp:Content>
