<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="When_Where_Web_Application._Default" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 text-left">
                        <b>
                            
                        </b>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">WhenWhere.org</h3>
                            </div>
                            <div class="panel-body">
                                <h3>WhenWhere.org - Collaborative Scheduling for Business or Personal Use.&nbsp;
                                    &nbsp;
                                    <button type="submit" class="btn btn-lg btn-primary"  onclick="location.href='Account/AccountSettings.aspx';">Try Using WhenWhere.org
                                        <i class="fa fa-fw fa-lg fa-pencil-square-o"></i>
                                    </button>
                                </h3>
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" >
                    <div class="col-md-4">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,
                            <br>sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
                            <br>Ut enim ad minim veniam, quis nostrudLorem ipsum dolor sit amet, consectetur
                            adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
                            Ut enim ad minim veniam, quis nostrudLorem ipsum dolor sit amet, consectetur
                            adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
                            Ut enim ad minim veniam, quis nostrud</p>
                    </div>
                    <div class="col-md-4">
                    <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="http://www.youtube.com/embed/i__1Z5a9Sak"
                            ></iframe>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <form class="form-horizontal" role="form" runat="server">
                            <div class="form-group">
                                <div class="col-sm-2">
                                    <label for="inputEmail3" class="control-label">Email</label>
                                </div>
                                <div class="col-sm-10">
                                    <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-2">
                                    <label for="inputPassword3" class="control-label">Password</label>
                                </div>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">Remember me</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <button type="submit" class="btn btn-primary">Sign in
                                        <i class="fa fa-fw fa-table"></i>
                                    </button>
                                </div>
                                <div class="col-sm-8">
                                    <section id="socialLoginForm">
                                        <uc:openauthproviders runat="server" id="OpenAuthLogin" ReturnUrl="~/MainDashboard.aspx"/>
                                    </section>
                                </div>
                            </div>
                         </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container"></div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title text-center">© Copyright 2015 WhenWhere.org</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</asp:Content>
