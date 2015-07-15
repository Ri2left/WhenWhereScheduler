<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="When_Where_Web_Application._Default" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
                    <div class="form-horizontal" role="form" runat="server">
                        <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                        </asp:PlaceHolder>
                        <div class="form-group">
                            <div class="col-sm-3">
                                <label for="inputEmail3" class="control-label">Email</label>
                            </div>
                            <div class="col-sm-9">
                                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                    CssClass="text-danger" ErrorMessage="The email field is required." />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-3">
                                <label for="inputPassword3" class="control-label">Password</label>
                            </div>
                            <div class="col-sm-9">
                                 <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />

                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-4">
                                <button runat="server" type="submit" onserverclick="LogIn" class="btn btn-primary">Sign in
                                    <i class="fa fa-fw fa-table"></i>
                                </button>
                            </div>
                            <div class="col-sm-8">
                                <section id="socialLoginForm">
                                    <uc:openauthproviders runat="server" id="OpenAuthLogin" ReturnUrl="~/MainDashboard.aspx"/>
                                </section>
                            </div>
                        </div>
                        </div>
                </div>
            </div>
</asp:Content>
