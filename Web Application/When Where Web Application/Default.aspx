<%@ Page Title="Welcome" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="When_Where_Web_Application._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">

        <div class="col-md-10">
            <h2><%: Title%>.</h2>
            <p>
                This will need to be the login page (or mabye a landing page?)
            </p>
            <p>
                <a class="btn btn-default" href="Provider.aspx?id=0">Login as a provider &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
