<%@ Page Title="Welcome" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Provider.aspx.vb" Inherits="When_Where_Web_Application.Provider" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12" style="text-align: right"><br />
            <p>
                <a class="btn btn-default" href="">Dashboard</a><a class="btn btn-default" href="">Manage Clients</a><a class="btn btn-default" href="">Account Settings</a>
            </p>
        </div>
    </div>
    <div class="row">

        <div class="col-md-8">
            <asp:FormView ID="FormProviderDetail" runat="server" ItemType="When_Where_Web_Application.tblProvider" SelectMethod="GetProvider" UpdateMethod="UpdateButton_Click" RenderOuterTable ="false">
            <ItemTemplate>
            <h2><%: Title%> <%#:Item.Provider_display_short_name%>.</h2>
            <p>
                Weekly Calendar Goes Here
            </p>
            <p><b>Joined Date: </b> <%#:Item.Provider_joined_date%></p>
            <p><b>Payment History: </b> <%#:String.Format("{0:C}", Item.Provider_billing_payment_history)%></p>
           <p><b>Person ID: </b> <%#:Item.Provider_person_id%></p>
            <asp:LinkButton ID="EditButton"
                            Text="Edit"
                            CommandName="Edit"
                            RunAt="server"/>
            </ItemTemplate>
             <EditItemTemplate>
                  <table>
                    <tr><td><b>Display Name:</b></td>
                        <td><asp:TextBox ID="EditFirstName" 
                                         Text='<%# Item.Provider_display_short_name %>' 
                                         RunAt="Server" /></td></tr>
                    
                    <tr><td><b>Joined Date:</b></td>
                        <td><asp:TextBox ID="EditJoinedDate" 
                                         Text='<%#:Item.Provider_joined_date%>' 
                                         RunAt="Server" /></td></tr>
                    <tr><td><b>Payment History:</b></td>
                        <td><asp:TextBox ID="EditPaymentHistory" 
                                         Text='<%#:Item.Provider_billing_payment_history%>' 
                                         RunAt="Server" Format/></td></tr>
                      <tr>
                      <td colspan="2">
                        <asp:LinkButton ID="UpdateButton"
                                        Text="Update"
                                        CommandName="Update"
                                        RunAt="server"/>
                        &nbsp;
                        <asp:LinkButton ID="CancelUpdateButton"
                                        Text="Cancel"
                                        CommandName="Cancel"
                                        RunAt="server"/>
                      </td>
                    </tr>
                  </table>                 
                </EditItemTemplate>   

            </asp:formView>
        </div>
        <div class="col-md-4">
            <h2>Monthly Calendar Goes Here</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>


</asp:Content>
