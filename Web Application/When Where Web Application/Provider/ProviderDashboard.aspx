<%@ Page Title="Welcome" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ProviderDashboard.aspx.vb" Inherits="When_Where_Web_Application.ProviderDashboard" %>
<%@ Register assembly="DayPilot" namespace="DayPilot.Web.Ui" tagprefix="DayPilot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <br />
        <div class="col-md-8" style="text-align: left">
           <asp:FormView ID="FormProviderDetail" runat="server" ItemType="When_Where_Web_Application.tblProvider" SelectMethod="GetProvider" UpdateMethod="UpdateButton_Click" DataKeyNames="Provider_id" RenderOuterTable ="false">
            <ItemTemplate>
            <h2><%: Title%> <%#:Item.Provider_display_short_name%>.</h2>
            <p><b>Joined Date: </b> <%#:Item.Provider_joined_date%></p>
            <p><b>Provider ID: </b> <%#:Item.Provider_id%></p>
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
                <EmptyDataTemplate>
                    There is provider with that id.
                </EmptyDataTemplate>
            </asp:formView>
            <p>
                <a class="btn btn-default" href="">Dashboard</a><a class="btn btn-default" href="">Manage Clients</a><a class="btn btn-default" href="AccountSettings.aspx?id=0">Account Settings</a>
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            
            <div style="height:509px; width: 100%;">
                 <script type="text/javascript" src="../Scripts/daypilot-modal-2.2.js"></script> 
                <script type="text/javascript">
                    function createEvent(start, end, resource) {
                        var modal = new DayPilot.Modal();
                        modal.top = 60;
                        modal.width = 300;
                        modal.opacity = 70;
                        modal.border = "5px solid #d0d0d0";
                        modal.height = 350;
                        modal.closed = function () { // callback executed after the dialog is closed
                            if (this.result == "OK") {  // if the
                                calendar.commandCallBack('refresh');
                            }
                        };
                        //modal.showUrl("NewAvailability.aspx?start=" + start.toStringSortable() + "&end=" + end.toStringSortable() + "&r=" + resource);
                        modal.showUrl("ProviderLogic/NewAvailability.aspx?start=" + start.toStringSortable() + "&end=" + end.toStringSortable() + "&r=" + resource);
                    }
                </script>
                <div><DayPilot:DayPilotCalendar ClientObjectName="calendar"  ID="CalendarAvailabilities" runat="server" /></div>
             </div>	
        </div>
        <div class="col-md-4">
            <asp:Calendar runat="server"/>
        </div>
    </div>
</asp:Content>
