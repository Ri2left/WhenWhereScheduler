<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AccountSettings.aspx.vb" Inherits="When_Where_Web_Application.AccountSettings1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
 <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css">
        <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
        rel="stylesheet" type="text/css">
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 text-left">
                    </div>
                    <ul class="lead nav nav-tabs" role="tablist">
                        <li>
                            <a href="Dashboard.html">Dashboard<i class="fa fa-border fa-fw fa-table pull-right text-success"></i></a>
                        </li>
                        <li>
                            <a href="Wizards.html">Wizards<i class="fa fa-border fa-fw pull-right text-primary fa-magic"></i></a>
                        </li>
                        <li>
                            <a href="Manage Resources.html">Manage Resources<i class="-plus fa fa-border fa-fw fa-user-plus pull-right s text-warning"></i></a>
                        </li>
                        <li class="active">
                            <a href="#">Account Settings<i class="fa fa-border fa-fw fa-spin fa-wrench pull-right text-danger"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2>Account Settings
                            <i class="fa fa-fw fa-wrench text-danger"></i>
                        </h2>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>