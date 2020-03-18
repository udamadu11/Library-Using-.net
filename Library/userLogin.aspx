<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="Library.userLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:40px;margin-bottom:5px;">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="img/businessman.png" width="100px" height="100px" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Member Login</h2>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                               <div class="form-group">
                                    <label>Member Id</label>
                                   <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Member Id"></asp:TextBox>
                                    </div>
                                  <div class="form-group">
                                    <label>Password</label>
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                  </div>
                                  <div class="form-group">
                                      <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-success btn-block btn-lg" />
                                  </div>
                                  <div class="form-group">
                                     <a href="userSignUp.aspx"><button class="btn btn-primary btn-block btn-lg" type="button" id="Button2">Sign Up</button></a>
                                  </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="WebForm2.aspx" style="margin-top:5px;"> << Back to Home Page</a>
            </div>
        </div>
    </div>
</asp:Content>
