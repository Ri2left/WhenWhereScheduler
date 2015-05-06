<%@ Page Title="Welcome" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="When_Where_Web_Application._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     
    <div class="row">
        <div class="col-md-12" style="text-align: right"><br />
            <p>
                <a class="btn btn-default" href="">Dashboard</a><a class="btn btn-default" href="">Manage Clients</a><a class="btn btn-default" href="">Account Settings</a>
            </p>
        </div>
    </div>
    <div class="row">

        <div class="col-md-10">
            <asp:FormView ID="providerDetail" runat="server" ItemType="When_Where_Web_Application.tblProvider" SelectMethod ="GetProvider" RenderOuterTable="false">
            <ItemTemplate>
            <h2><%: Title%> <%#:Item.Provider_display_short_name%>. This is where the calendar will go</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
            </ItemTemplate>
            </asp:formView>
        </div>
       
        <div class="col-md-2">
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
