<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminAuthorManagement.aspx.cs" Inherits="Library.adminAuthorManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:10px;margin-bottom:10px;">
        <div class="row">
            <div class="col-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Author Details</h2>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="img/authorization.png" width="100" height="80" />
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
                                    <label>Author Id</label>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Author Id"></asp:TextBox>
                                                <asp:Button ID="Button4" runat="server" Text="Go" class="btn btn-dark"/>
                                            </div>
                                        </div>
                                    </div>
                                
                                <div class="col-md-6">
                                    <label>Author Name</label>
                                   <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Author Name"></asp:TextBox>
                                    </div>
                            </div>

                            
                             <div class="row" style="margin-top:15px;">
                                <div class="col-md-4">
                                   <div class="form-group">
                                        <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn btn-info btn-lg btn-block"/>
                                   </div>
                                </div>
                                <div class="col-md-4">
                                      <div class="form-group">
                                        <asp:Button ID="Button2" runat="server" Text="Update" CssClass="btn btn-success btn-lg btn-block"/>

                                      </div>
                                </div>
                                 <div class="col-md-4">
                                      <div class="form-group">
                                        <asp:Button ID="Button3" runat="server" Text="Delete" CssClass="btn btn-danger btn-lg btn-block"/>
                                      </div>
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
                                    <img src="img/author.png" width="100" height="80" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Author List</h2>
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
