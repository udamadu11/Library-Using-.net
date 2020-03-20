<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminPublisherManagement.aspx.cs" Inherits="Library.adminPublisherManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
    </script>
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
                                    <h2>Publisher Details</h2>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="img/content.png" width="100" height="80" />
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
                                    <label>Publisher Id</label>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Publisher Id"></asp:TextBox>
                                                <asp:Button ID="Button4" runat="server" Text="Go" class="btn btn-dark" OnClick="Button4_Click"/>
                                            </div>
                                        </div>
                                    </div>
                                
                                <div class="col-md-6">
                                    <label>Publisher Name</label>
                                   <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Publisher Name"></asp:TextBox>
                                    </div>
                            </div>

                            
                             <div class="row" style="margin-top:15px;">
                                <div class="col-md-4">
                                   <div class="form-group">
                                        <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn btn-info btn-lg btn-block" OnClick="Button1_Click"/>
                                   </div>
                                </div>
                                <div class="col-md-4">
                                      <div class="form-group">
                                        <asp:Button ID="Button2" runat="server" Text="Update" CssClass="btn btn-success btn-lg btn-block" OnClick="Button2_Click"/>

                                      </div>
                                </div>
                                 <div class="col-md-4">
                                      <div class="form-group">
                                        <asp:Button ID="Button3" runat="server" Text="Delete" CssClass="btn btn-danger btn-lg btn-block" OnClick="Button3_Click"/>
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
                                    <img src="img/4.png" width="100" height="80" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Publisher List</h2>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eLibConnectionString %>" SelectCommand="SELECT * FROM [publish_master]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="publish_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="publish_id" HeaderText="publish_id" ReadOnly="True" SortExpression="publish_id" />
                                        <asp:BoundField DataField="publish_name" HeaderText="publish_name" SortExpression="publish_name" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      </div>
     </div>
</asp:Content>
