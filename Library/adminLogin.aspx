<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="Library.adminLogin" %>
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
                                    <img src="img/admin.png" width="100" height="100" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Admin Login</h2>
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
                                    <label>Admin</label>
                                   <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Admin"></asp:TextBox>
                                    </div>
                                  <div class="form-group">
                                    <label>Password</label>
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                  </div>
                                  <div class="form-group">
                                      <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-success btn-block btn-lg" />
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
