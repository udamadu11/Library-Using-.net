﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminBookIssuing.aspx.cs" Inherits="Library.adminBookIssuing" %>
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
                                    <h2>Book issuing</h2>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="img/book.png" width="100" height="80" />
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
                                    <label>Member Id</label>
                                   <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Member Id"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label>Book Id</label>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Book Id"></asp:TextBox>
                                                <asp:Button ID="Button4" runat="server" Text="Go" class="btn btn-dark"/>
                                            </div>
                                        </div>
                                </div>
                            </div>

                         <div class="row">
                                <div class="col-md-6">
                                    <label>Member Name</label>
                                   <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label>Book Name</label>
                                   <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Book Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>    

                        <div class="row">
                                <div class="col-md-6">
                                    <label>Start Date</label>
                                   <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label>End Date</label>
                                   <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                            </div> 

                             <div class="row" style="margin-top:15px;">
                                <div class="col-md-6">
                                   <div class="form-group">
                                        <asp:Button ID="Button1" runat="server" Text="Issue" CssClass="btn btn-primary btn-lg btn-block"/>
                                   </div>
                                </div>
                                <div class="col-md-6">
                                      <div class="form-group">
                                        <asp:Button ID="Button2" runat="server" Text="Return" CssClass="btn btn-success btn-lg btn-block"/>

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
                                    <h2>Issued Book List</h2>
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
