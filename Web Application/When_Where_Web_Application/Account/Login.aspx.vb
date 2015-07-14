Imports System.Web
Imports System.Web.UI
Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports Microsoft.Owin.Security
Imports Owin

Partial Public Class Login
    Inherits Page
    Private Const m_ReturnURL = "~/MainDashboard.aspx"

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        'RegisterHyperLink.NavigateUrl = "~\Account\Register?ReturnUrl=" & m_ReturnURL

        ' Enable this once you have account confirmation enabled for password reset functionality
        ' ForgotPasswordHyperLink.NavigateUrl = "Forgot"
       
    End Sub

    Protected Sub LogIn(sender As Object, e As EventArgs)
        If IsValid Then
            ' Validate the user password
            Dim manager = Context.GetOwinContext().GetUserManager(Of ApplicationUserManager)()
            Dim signinManager = Context.GetOwinContext().GetUserManager(Of ApplicationSignInManager)()

            ' This doen't count login failures towards account lockout
            ' To enable password failures to trigger lockout, change to shouldLockout := True
            Dim result = signinManager.PasswordSignIn(Email.Text, Password.Text, RememberMe.Checked, shouldLockout := False)

            Select Case result
                Case SignInStatus.Success
                    IdentityHelper.RedirectToReturnUrl(m_ReturnURL, Response)
                    Exit Select
                Case SignInStatus.LockedOut
                    Response.Redirect("/Account/Lockout")
                    Exit Select
                Case SignInStatus.RequiresVerification
                    Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
                                                    m_ReturnURL,
                                                    RememberMe.Checked),
                                      True)
                    Exit Select
                Case Else
                    FailureText.Text = "Invalid login attempt"
                    ErrorMessage.Visible = True
                    Exit Select
            End Select
        End If
    End Sub
End Class
