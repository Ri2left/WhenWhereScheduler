Imports System.Linq
Imports System.Data.Entity

Public Class Provider
    Inherits System.Web.UI.Page
    Dim providerLiveData As WhenWhereEntities
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Public Function GetProvider() As IQueryable(Of tblProvider)
        Dim providerID As String = Request.QueryString("id")
        Dim db As New WhenWhereEntities
        Dim provider As IQueryable(Of tblProvider) = db.tblProviders.Where(Function(p) p.Provider_id = providerID)
        Return provider
    End Function

    Sub UpdateButton_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim ID As String = Request.QueryString("id")
        Dim txtName As TextBox = FormProviderDetail.FindControl("EditFirstName")
        Dim txtJoinedDate As TextBox = FormProviderDetail.FindControl("EditJoinedDate")
        Dim txtPymt As TextBox = FormProviderDetail.FindControl("EditPaymentHistory")

        Try
            Using context As New WhenWhereEntities
                Dim provider As IQueryable(Of tblProvider) = context.tblProviders

                Dim providerQuery = _
                    (From p In provider _
                     Select p Where p.Provider_id = ID).FirstOrDefault()

                providerQuery.Provider_display_short_name = txtName.Text
                providerQuery.Provider_joined_date = txtJoinedDate.Text
                providerQuery.Provider_billing_payment_history = String.Format("{0:C}", txtPymt.Text)


                context.SaveChanges()

            End Using
            'db.Database.Log()

        Catch ex As HttpException

            'MessageLabel.Text = "The FormView control must be in edit mode to update a record."

        End Try

    End Sub


    
End Class