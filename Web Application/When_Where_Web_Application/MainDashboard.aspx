﻿<%@ Page Title="Welcome" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="MainDashboard.aspx.vb" Inherits="When_Where_Web_Application.ProviderDashboard" %>
<%@ Register assembly="DayPilot" namespace="DayPilot.Web.Ui" tagprefix="DayPilot" %>

<%@ Import Namespace="Microsoft.AspNet.Identity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row">
        <div class="col-md-12">
             <h3 class="text-right">
             <i class="fa fa-sign-out text-info"></i><asp:LoginStatus runat="server" LogoutAction="Redirect" LogoutText="Log out" LogoutPageUrl="~/" OnLoggingOut="Unnamed_LoggingOut" /></h3>
        </div>  
    
    </div>  
    <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 text-left">
                    </div>
                    <ul class="lead nav nav-tabs" role="tablist">
                        <li class="active">
                            <a href="Dashboard.html">Dashboard<i class="fa fa-border fa-fw fa-table pull-right text-success"></i></a>
                        </li> 
                        <li>
                            <a href="Manage Resources.html">Manage Resources<i class="-plus fa fa-border fa-fw fa-user-plus pull-right s text-warning"></i></a>
                        </li>
                        <li >
                            <a href="#">Account Settings<i class="fa fa-border fa-fw fa-wrench pull-right text-danger"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
   
    <div class="row">
        <div class="col-md-8" style="text-align: left">
           <asp:FormView ID="FormProviderDetail" runat="server" ItemType="When_Where_Web_Application.tblProvider" SelectMethod="GetProvider" UpdateMethod="UpdateButton_Click" DataKeyNames="Provider_id" RenderOuterTable ="false">
            <ItemTemplate>
            

            <h2><%: Title%> <a runat="server" href="~/Account/Manage" title="Manage your account"><%: Context.User.Identity.GetUserName()  %></a>.
            </h2>
            <p><b>Joined Date: </b> <%#:Item.Provider_joined_date%></p>
            <p><b>Is this user verified?: </b> <%= m_bIsEmailConfirmed%> </p>
               
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
                    There is no provider with that id.
                </EmptyDataTemplate>
            </asp:formView>
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
                        modal.showUrl("NewAvailability.aspx?start=" + start.toStringSortable() + "&end=" + end.toStringSortable() + "&r=" + resource);
                    }

                    function editEvent(e) {
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
                       modal.showUrl("EditAvailability.aspx?id=" + e.id());
                    }

                </script>
                <div>
                     <asp:ScriptManager ID="ScriptManager1" runat="server"/>
                    <asp:UpdatePanel runat="server" ID="CalendarUpdatePanel" UpdateMode="Conditional" >
                      <ContentTemplate>
                        <DayPilot:DayPilotCalendar ClientObjectName="calendar"  ID="CalendarAvailabilities" runat="server" />
                      </ContentTemplate>
                    </asp:UpdatePanel>
                </div>	
        </div>
        <div class="col-md-4">
            <asp:Calendar runat="server"/>
        </div>
    </div>
</asp:Content>
