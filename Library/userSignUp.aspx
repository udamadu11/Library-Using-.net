<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userSignUp.aspx.cs" Inherits="Library.userSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:10px;margin-bottom:10px;">
        <div class="row">
            <div class="col-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="img/essay.png" width="100" height="100" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Member Sign Up</h2>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                    <label>Full Name</label>
                                   <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
                                    </div>
                                
                                <div class="col-md-6">
                                    <label>Date Of Birth</label>
                                   <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                    </div>
                            </div>
                            
                            <div class="row">
                            <div class="col-md-6">
                                    <label>Contact No</label>
                                   <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                    </div>
                                
                                <div class="col-md-6">
                                    <label>Email</label>
                                   <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                                    </div>
                            </div>
                            
                            <div class="row">
                            <div class="col-md-4">
                                    <label>State</label>
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="Select" Value="Select" />
                                    <asp:ListItem Text="Galle" Value="Galle" />
                                    <asp:ListItem Text="Colombo" Value="Colombo" />
                                    <asp:ListItem Text="Mathara" Value="Mathara" />
                                    <asp:ListItem Text="Kandy" Value="Kandy" />
                                    <asp:ListItem Text="Jaffana" Value="Jaffna" />
                                    <asp:ListItem Text="Gampaha" Value="Gampaha" />
                                </asp:DropDownList>
                                    </div>
                                
                                <div class="col-md-4">
                                    <label>City</label>
                                   <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="City"></asp:TextBox>
                                    </div>

                                <div class="col-md-4">
                                    <label>Zip Code</label>
                                   <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="Zip" TextMode="Number"></asp:TextBox>
                                    </div>
                            </div>
                        
                             <div class="row">
                                <div class="col">
                                    <label>Full Address</label>
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                            </div>

                             <div class="row">
                                <div class="col">
                                    <center><span class="badge badge-primary">Login Credential</span></center>
                                 </div>
                            </div>
                            
                             <div class="row">
                                <div class="col-md-6">
                                   <div class="form-group">
                                        <label>User Name</label>
                                       <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" placeholder="User Name"></asp:TextBox>
                                   </div>
                                </div>
                                <div class="col-md-6">
                                      <div class="form-group">
                                        <label>Password</label>
                                        <asp:TextBox ID="TextBox9" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                      </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:Button ID="Button1" runat="server" Text="Sign Up" CssClass="btn btn-success btn-block" />
                                   
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
