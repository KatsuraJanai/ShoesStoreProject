<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerSignUp.aspx.cs" Inherits="ShoesStoreProject.CustomerSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-12 mx-auto">

                <div class="card" >
                    <div class="card-body">

                        <div class="row">
                            <div class="col text-center">
                                
                                    <img width="100" src="images/register.png" />
                                
                            </div>
                        </div>

                        <div class ="row">
                            <div class="col text-center">
                                
                                <h4 style="color: #FFFFFF">Customer Sign Up</h4>
                                
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
                                    <asp:TextBox CssClass="form-control" ID="fNameTxt" runat="server" placeholder="First Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator  CssClass="valid"  ID="rfvFname" runat="server" ErrorMessage="First Name Field is Empty" ControlToValidate="fNameTxt"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                             <div class="col-md-6">
                                <label style="color: #FFFFFF">Last Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="lNameTxt" runat="server" placeholder="Last Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="valid" ID="rfvLname" runat="server" ErrorMessage="Last Name field is empty" ControlToValidate="lNameTxt"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label style="color: #FFFFFF">Email Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="emailTxt" runat="server" placeholder="Email Address"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="valid" ID="rfvEmail" runat="server" ErrorMessage="Email is required" ControlToValidate="emailTxt"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator CssClass="valid" ID="revEmail" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="emailTxt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                            </div>

                             <div class="col-md-6">
                                <label style="color: #FFFFFF">Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="phoneTxt" runat="server" placeholder="Phone"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="valid" ID="rfvPhone" runat="server" ErrorMessage="This Field is required" ControlToValidate="phoneTxt"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator CssClass="valid" ID="revContact" runat="server" ErrorMessage="Incorrect format" ControlToValidate="phoneTxt" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-6">
                                <label style="color: #FFFFFF">Date of birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="dobTxt" runat="server" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="valid" ID="rfvDob" runat="server" ErrorMessage="Field is required" ControlToValidate="dobTxt"></asp:RequiredFieldValidator>

                                </div>
                            </div>

                             <div class="col-md-6">
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

                                    <asp:RequiredFieldValidator ID="rfvCountry" CssClass="valid" runat="server" ErrorMessage="Field is required" ControlToValidate="countryList"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <label style="color: #FFFFFF">Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="addressTxt" runat="server" placeholder="Address" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="valid" ID="rfvAddress" runat="server" ErrorMessage="Field is required" ControlToValidate="addressTxt"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col" >
                                <hr/>
                            </div>
                        </div>


                         <div class="row">
                            <div class="col-md-6">
                                <label style="color: #FFFFFF">Username</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="usernameTxt" runat="server" placeholder="Username"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="valid" ID="rfvUsername" runat="server" ErrorMessage="Required Field" ControlToValidate="usernameTxt"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label style="color: #FFFFFF">Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="passwordTxt" runat="server" placeholder="*******" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="valid" ID="rfvPassword" runat="server" ErrorMessage="Required Field" ControlToValidate="passwordTxt"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator CssClass="valid" ID="cvPassword" runat="server" ErrorMessage="CompareValidator" ControlToCompare="confirmPasswordTxt" ControlToValidate="passwordTxt"></asp:CompareValidator>
                                    <asp:RegularExpressionValidator ID="passwordREValidator1" runat="server" ErrorMessage="Password must be 8-20 charcters" ControlToValidate="passwordTxt" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[0-9])(?=.*[@#$%])(?=.*[A-Z]).{8,20})" ></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label style="color: #FFFFFF">Confirm password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="confirmPasswordTxt" runat="server" placeholder="*******" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator CssClass="valid" ID="rfvConfirmPassword" runat="server" ErrorMessage="Field is Required" ControlToValidate="confirmPasswordTxt"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col text-center">
                                <div class="form-group">
                                    <asp:Button Text="Submit" CssClass="btn btn-success" ID="SubmitBtn" runat="server" OnClick="SubmitBtn_Click"  ></asp:Button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
