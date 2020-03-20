<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminMemberManagement.aspx.cs" Inherits="Library.adminMemberManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
    </script>
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
                                    <h2>Member Details</h2>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="img/essay.png" width="100" height="80" />
                                </center>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                                <div class="col-md-3">
                                    <label>Member Id</label>
                                       <div class="form-group">
                                                <div class="input-group">
                                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Id"></asp:TextBox>
                                                    <asp:Button ID="Button3" runat="server" Text="Go" class="btn btn-dark" OnClick="Button3_Click"/>
                                                </div>
                                     </div>
                                </div>
                                <div class="col-md-3">
                                    <label>Full Name</label>
                                       <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label>Account Status</label>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control mr-1" placeholder="Account Status" ReadOnly="True"></asp:TextBox>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success mr-1" OnClick="LinkButton1_Click"><i class="fa fa-check-circle"></i></asp:LinkButton>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-info mr-1" OnClick="LinkButton2_Click"><i class="fa fa-pause-circle"></i></asp:LinkButton>
                                                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-danger mr-1" OnClick="LinkButton3_Click"><i class="fa fa-times-circle"></i></asp:LinkButton>
                                            </div>
                                        </div>
                                </div>
                            </div>

                         <div class="row">
                                <div class="col-md-4">
                                    <label>DOB</label>
                                   <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="DOB" ReadOnly="True" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <label>Contact</label>
                                   <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Contact No:" ReadOnly="True"></asp:TextBox>
                                </div>
                                <div class="col-md-5">
                                    <label>Email</label>
                                   <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" placeholder="Email" ReadOnly="True" TextMode="Email"></asp:TextBox>
                                </div>
                            </div> 
                        
                         <div class="row">
                                <div class="col-md-4">
                                    <label>State</label>
                                   <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" placeholder="State" ReadOnly="True"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <label>City</label>
                                   <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" placeholder="City" ReadOnly="True"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <label>Zip</label>
                                   <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" placeholder="Zip" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div> 

                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>   

                        

                             <div class="row" style="margin-top:15px;">
                                <div class="col">
                                   <div class="form-group">
                                        <asp:Button ID="Button1" runat="server" Text="Delete" CssClass="btn btn-danger btn-block" OnClick="Button1_Click"/>
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
                                    <h2>Member List</h2>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eLibConnectionString %>" SelectCommand="SELECT * FROM [member_master]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member Id" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="E-Mail" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
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
