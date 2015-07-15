Imports System
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports Owin

Partial Public Class Register
    Inherits Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        'Turn off display of "Try it now!" Button --------------------------------------'
        Me.Master.FindControl("TryNowButton").Visible = False


    End Sub
    Protected Sub CreateUser_Click(sender As Object, e As EventArgs)
        Dim userName As String = Email.Text
        Dim manager = Context.GetOwinContext().GetUserManager(Of ApplicationUserManager)()
        Dim signInManager = Context.GetOwinContext().Get(Of ApplicationSignInManager)()
        Dim user = New ApplicationUser() With {.UserName = userName, .Email = userName}
        Dim result = manager.Create(user, Password.Text)
        If result.Succeeded Then

            'Make a new WhenWhere User for this account ----------------------------'
            CreateNewWhenWhereUser(user)


            ' For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
            Dim code = manager.GenerateEmailConfirmationToken(user.Id)
            Dim callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request)
            manager.SendEmail(user.Id, "Confirm your account", "<a href=""" & callbackUrl & """> Yes! This is my e-mail address</a>.")

            signInManager.SignIn(user, isPersistent:=False, rememberBrowser:=False)
            IdentityHelper.RedirectToReturnUrl(Request.QueryString("ReturnUrl"), Response)
        Else
            ErrorMessage.Text = result.Errors.FirstOrDefault()
        End If
    End Sub

End Class

