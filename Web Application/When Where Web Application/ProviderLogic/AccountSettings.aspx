<%@ Page Title="Account Settings" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AccountSettings.aspx.vb" Inherits="When_Where_Web_Application.AccountSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="row">
    <h2>Account Settings</h2>
      <div class="col-sm-6" style="background-color:lavender;">
          <div class="row" style="background-color:lightgray;">
                   Billing Info
            </div>
      </div>
    <div class="col-sm-6">
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-heading">My Info</div>
                    <div class="panel-body">
                        <div class="form-group">
                          <textarea class="form-control" rows="5" id="txtAreaMyInfo"></textarea>
                        </div>
                    </div>
                </div> 
            </div>
            <div class="row">
                <div class="panel panel-default">
                  <div class="panel-heading">Notification Preferences</div>
                  <div class="panel-body">
                       <div class="radio">
                          <label><input type="radio" name="optradio">Notify at Every change</label>
                        </div>
                        <div class="radio">
                          <label><input type="radio" name="optradio">Notify Once a Day</label>
                        </div>
                        <div class="radio">
                          <label><input type="radio" name="optradio" disabled>Notify Once a Week</label>
                        </div>
                        <div class="radio">
                          <label><input type="radio" name="optradio" disabled>Turn Off ALL Notification</label>
                        </div>
                      <asp:LinkButton ID="TestNotification"
                            Text="Test Notification"
                            RunAt="server"/>
                  </div>
                </div>
            </div>
          <div class="row">
                   <div class="panel panel-default">
                    <div class="panel-heading">My Scratch Pad</div>
                    <div class="panel-body">
                        <div class="form-group">
                          <textarea class="form-control" rows="5" id="txtAreaMyScratchPad"></textarea>
                        </div>
                    </div>
                </div> 
           </div>
          <div class="row" style="background-color:lemonchiffon;">
                   Client Dashboard Message of the week banner
            </div>
      </div>
</div>
<div class="row">
     <div class="col-sm-12">
         <div class="row" style="background-color:cyan;">
                    Relations to Other Providers
            </div>
    </div>
</div>
 <div class="row">
     <div class="col-sm-6">
         <div class="row" style="background-color:lavender;">
                    Refer a friend for one free month
            </div>
    </div>
     <div class="col-sm-6">
         <div class="row" style="background-color:lightgray;">
                 <div class="panel panel-default">
                     <div class="panel-heading">Add a Client</div>
                     <div class="panel-body">
                        <div class="form-group">
                          <label class="control-label col-sm-2" for="pwd">Client e-mail(s):</label>
                          <div class="col-sm-10">          
                            <input type="text" class="form-control" id="txtAddClientEmail" placeholder="joe@crabshack.com, john@crabshack.com">
                          </div>
                        </div>
                        <div class="form-group">        
                          <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">Submit</button>
                          </div>
                        </div>
                         </div>
                     </div>
            </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-12">
         <div class="row">
                   <div class="well well-sm">Message from system</div> 
            </div>
    </div>
</div>
</asp:Content>
