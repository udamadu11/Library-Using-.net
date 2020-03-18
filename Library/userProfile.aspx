<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userProfile.aspx.cs" Inherits="Library.userProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid" style="margin-top:10px;margin-bottom:10px;">
        <div class="row">
            <div class="col-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="img/student.png" width="100" height="80" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Your Profile</h2>
                                    <span>Account status - </span>
                                   <asp:Label ID="Label1" runat="server" Text="your status" class="badge badge-primary"></asp:Label>
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
                                <div class="col-md-4">
                                   <div class="form-group">
                                        <label>User Name</label>
                                       <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" placeholder="User Name"></asp:TextBox>
                                   </div>
                                </div>
                                <div class="col-md-4">
                                      <div class="form-group">
                                        <label>Old Password</label>
                                        <asp:TextBox ID="TextBox9" runat="server" placeholder="Old Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                      </div>
                                </div>
                                 <div class="col-md-4">
                                      <div class="form-group">
                                        <label>New Password</label>
                                        <asp:TextBox ID="TextBox10" runat="server" placeholder="New Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                      </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center><asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-info btn-lg" width="300"/></center>
                                   
                                 </div>
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
                                    <img src="img/book.png" width="100" height="80" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Your Issue Books</h2>
                                   <asp:Label ID="Label2" runat="server" Text="your book info" class="badge badge-primary"></asp:Label>
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
                                <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered table-hover"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      </div>
     </div>
</asp:Content>
