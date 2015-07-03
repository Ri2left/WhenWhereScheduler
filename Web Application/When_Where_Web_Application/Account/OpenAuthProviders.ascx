<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="OpenAuthProviders.ascx.vb" Inherits="When_Where_Web_Application.OpenAuthProviders" %>

<div id="socialLoginList">
    <asp:ListView runat="server" ID="providerDetails" ItemType="System.String"
        SelectMethod="GetProviderNames" ViewStateMode="Disabled">
        <ItemTemplate>
            <p>
                <button type="submit" class="btn btn-default" name="provider" value="<%#: Item %>"
                    title="Log in using your <%#: Item %> account.">
                    Login with <%#: Item %>
                </button>
            </p>
        </ItemTemplate>
        <EmptyDataTemplate>
        </EmptyDataTemplate>
    </asp:ListView>
</div>
