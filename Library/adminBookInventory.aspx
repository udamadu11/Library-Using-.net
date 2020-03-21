<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminBookInventory.aspx.cs" Inherits="Library.adminBookInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
         $(document).ready(function () {
             $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
         });
    </script>
    <script type="text/javascript">
        function readURL(input) {

            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#image').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }
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
                                    <h2>Book Details</h2>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" height="80px" id="image" src="book Inventory/book.png" />
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
                                <asp:FileUpload ID="FileUpload1" runat="server" OnChange="readURL(this);" çlass="form-control"/>
                            </div>
                        </div>
                        <div class="row">
                                <div class="col-md-6">
                                    <label>Book Id</label>
                                       <div class="form-group">
                                                <div class="input-group">
                                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Book Id"></asp:TextBox>
                                                    <asp:Button ID="Button3" runat="server" Text="Go" class="btn btn-dark" OnClick="Button3_Click"/>
                                                </div>
                                     </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Book Name</label>
                                       <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="Book Name"></asp:TextBox>
                                </div>
                                
                            </div>

                         <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Language</label>
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="Select" Value="Select" />
                                            <asp:ListItem Text="English" Value="English" />
                                            <asp:ListItem Text="Sinhala" Value="Sinhala" />
                                            <asp:ListItem Text="Tamil" Value="Tamil" />
                                            <asp:ListItem Text="Hindi" Value="Hindi" />
                                </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label>Publisher Name</label>
                                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="Select" Value="Select" />
                                            <asp:ListItem Text="A1" Value="A1" />
                                            <asp:ListItem Text="A2" Value="A2" />
                                            <asp:ListItem Text="A3" Value="A3" />
                                            <asp:ListItem Text="A4" Value="A4" />
                                </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                   <div class="form-group">
                                        <label>Author Name</label>
                                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="Select" Value="Select" />
                                            <asp:ListItem Text="B1" Value="B1" />
                                            <asp:ListItem Text="B2" Value="B2" />
                                            <asp:ListItem Text="B3" Value="B3" />
                                            <asp:ListItem Text="B4" Value="B4" />
                                </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label>Publish Date</label>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Publish Date" TextMode="Date"></asp:TextBox>
                               
                                    </div>

                                </div>
                                <div class="col-md-4">
                                    <label>Genre</label>
                                    <asp:ListBox ID="ListBox1" runat="server" CssClass="form-control" Rows="5" SelectionMode="Multiple">
                                            <asp:ListItem Text="A1" Value="A1" />
                                            <asp:ListItem Text="A2" Value="A2" />
                                            <asp:ListItem Text="A3" Value="A3" />
                                            <asp:ListItem Text="A4" Value="A4" />
                                            <asp:ListItem Text="B1" Value="B1" />
                                            <asp:ListItem Text="B2" Value="B2" />
                                            <asp:ListItem Text="B3" Value="B3" />
                                            <asp:ListItem Text="B4" Value="B4" />
                                    </asp:ListBox>
                                    </div>
                            </div> 
                        
                         <div class="row">
                                <div class="col-md-4">
                                    <label>Edition</label>
                                   <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" placeholder="Edition"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <label>Book Cost(per unit)</label>
                                   <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" placeholder="Cost"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <label>Pages</label>
                                   <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" placeholder="Pages"></asp:TextBox>
                                </div>
                            </div> 
                            
                        <div class="row">
                                <div class="col-md-4">
                                    <label>Acutual Stock</label>
                                   <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Acutual Stock"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <label>Current Stock</label>
                                   <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Current Stock" ReadOnly="True"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <label>Issue Books</label>
                                   <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Issue Books" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div> 

                        <div class="row">
                            <div class="col">
                                <label>Description</label>
                                <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
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
                                        <asp:Button ID="Button4" runat="server" Text="Delete" CssClass="btn btn-danger btn-lg btn-block" OnClick="Button4_Click"/>
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
                                    <h2>Book Inventory List</h2>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eLibConnectionString %>" SelectCommand="SELECT * FROM [book_master]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="book_d" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_d" HeaderText="ID" ReadOnly="True" SortExpression="book_d" >
                                        <HeaderStyle Font-Bold="True" />
                                        <ItemStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">
                                                            <div class="row">
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True"></asp:Label>
                                                            </div>
                                                            <div class="row">

                                                                Author-
                                                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                &nbsp;| Genre -
                                                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                &nbsp;| Language-
                                                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>

                                                            </div>
                                                            <div class="row">

                                                                Publisher -
                                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                &nbsp;| Publish Date -&nbsp;
                                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("publish_date") %>' Font-Bold="True"></asp:Label>
                                                                &nbsp;| Page -
                                                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("no_pages") %>' Font-Bold="True"></asp:Label>
                                                                &nbsp;| Edition -
                                                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("edition") %>'></asp:Label>

                                                            </div>
                                                            <div class="row">

                                                                Cost -
                                                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("book_cost") %>' Font-Bold="True"></asp:Label>
                                                                &nbsp;| Actual Stock -
                                                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("actual_stock") %>' Font-Bold="True"></asp:Label>
                                                                &nbsp;| Available -
                                                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("current_stock") %>' Font-Bold="True"></asp:Label>

                                                            </div>
                                                            <div class="row">

                                                                Description -
                                                                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Text='<%# Eval("book_description") %>'></asp:Label>

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-2">
                                                            <asp:Image ID="Image1" CssClass="img-fluid" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
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
