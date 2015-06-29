Imports Owin
Imports Microsoft.Owin.Security.Cookies
Imports Microsoft.AspNet.Identity
Imports Microsoft.Owin
Imports Microsoft.Owin.Security.Google

Partial Public Class Startup

    ' For more information on configuring authentication, please visit http://go.microsoft.com/fwlink/?LinkId=301883
    Public Sub ConfigureAuth(app As IAppBuilder)
        ' Enable the application to use a cookie to store information for the signed in user
        ' and also store information about a user logging in with a third party login provider.
        ' This is required if your application allows users to login
        app.UseCookieAuthentication(New CookieAuthenticationOptions() With {
        .AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
        .LoginPath = New PathString("/Account/Login")})
        app.UseExternalSignInCookie(DefaultAuthenticationTypes.ExternalCookie)

        ' Uncomment the following lines to enable logging in with third party login providers
        'app.UseMicrosoftAccountAuthentication(
        '    clientId:= "",
        '    clientSecret:= "")

        'app.UseTwitterAuthentication(
        '   consumerKey:= "",
        '   consumerSecret:= "")

        app.UseFacebookAuthentication(
           appId:="1678266289073070",
           appSecret:="ee2baea35ddc5b1d0d0531dc908b70ea")

        app.UseGoogleAuthentication(New GoogleOAuth2AuthenticationOptions() With {
           .ClientId = "583346189526-dar52dtu74g9onojbafpqoj82ooe4o4q.apps.googleusercontent.com",
           .ClientSecret = "oG3QirkHrxpsht2F16z4BXEW"})



    End Sub
End Class
