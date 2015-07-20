
Imports Microsoft.AspNet.Identity.Owin
Imports Microsoft.AspNet.Identity
Imports System.Linq 

'=======================================================
'Class: NewAvailability
'Description: This is the page that is shown when 
'a user clicks the calendar, to create a new event
'=======================================================
Public Class EditAvailability
    Inherits System.Web.UI.Page
    '=======================================================
    'Class: Page_Load
    'Description: Class entry point, takes calendar 
    'variables: start and end time
    '=======================================================
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim id As Integer = Request.QueryString("id")

            'Get this event
            Dim db As New WhenWhereEntities
            Dim availiability As tblAvailability = db.tblAvailabilities.Where(Function(i) i.Availability_id = id).Single

            txtStartTime.Text = availiability.Availability_start_time
            txtEndTime.Text = availiability.Availability_end_time
            txtName.Text = availiability.Availability_notes
            txtProviderID.Text = availiability.Availability_provider_id


        End If
    End Sub
    '=======================================================
    'Class: btnCancel_Click
    'Description: Called when user clicks 'Cancel' button
    '=======================================================
    Protected Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        Util.Modal.Close(Me)
    End Sub

    '=======================================================
    'Class: btnDelete_Click
    'Description: Called when user clicks 'Delete' button
    '=======================================================
    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        Try
            Using database As New WhenWhereEntities
                Dim id As Integer = Request.QueryString("id")
                Dim availibilityEdit As tblAvailability = database.tblAvailabilities.Where(Function(i) i.Availability_id = id).Single

                database.tblAvailabilities.Remove(availibilityEdit)
                database.SaveChanges()

                'RecordDatabaseTransaction(DELETE, availibilityNew)
            End Using


            'Close modal Form
            Util.Modal.Close(Me, "OK")

        Catch ex As HttpException
            lblMessage.Text = "Error occured updating database record."
            lblMessage.Visible = True
        End Try

    End Sub

    '=======================================================
    'Class: btnOK_Click
    'Description: Called when user clicks 'OK' button
    '=======================================================
    Protected Sub btnOK_Click(sender As Object, e As EventArgs) Handles btnOK.Click
        'Save data to database
        Try
            Using database As New WhenWhereEntities
                Dim id As Integer = Request.QueryString("id")
                Dim availibilityEdit As tblAvailability = database.tblAvailabilities.Where(Function(i) i.Availability_id = ID).Single

                availibilityEdit.Availability_start_time = txtStartTime.Text
                availibilityEdit.Availability_end_time = txtEndTime.Text
                availibilityEdit.Availability_notes = txtName.Text
                database.SaveChanges()

                'RecordDatabaseTransaction(UPDATE, availibilityNew)
            End Using

            'Close modal Form
            Util.Modal.Close(Me, "OK")

        Catch ex As HttpException
            lblMessage.Text = "Error occured updating database record."
            lblMessage.Visible = True
        End Try
    End Sub
End Class