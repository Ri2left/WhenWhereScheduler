'=======================================================
'Class: NewAvailability
'Description: This is the page that is shown when 
'a user clicks the calendar, to create a new event
'=======================================================
Public Class NewAvailability
    Inherits System.Web.UI.Page
    '=======================================================
    'Class: Page_Load
    'Description: Class entry point, takes calendar 
    'variables: start and end time
    '=======================================================
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtStartTime.Text = Request.QueryString("start")
        txtEndTime.Text = Request.QueryString("end")
        'txtProviderID = Session("")
    End Sub
    '=======================================================
    'Class: btnCancel_Click
    'Description: Called when user clicks 'Cancel' button
    '=======================================================
    Protected Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        Util.Modal.Close(Me)
    End Sub
    '=======================================================
    'Class: btnOK_Click
    'Description: Called when user clicks 'OK' button
    '=======================================================
    Protected Sub btnOK_Click(sender As Object, e As EventArgs) Handles btnOK.Click
        'Save data to database
        Try
            Using database As New WhenWhereEntities
                Dim availibilityNew As tblAvailability = New tblAvailability()
               
                availibilityNew.Availability_start_time = txtStartTime.Text
                availibilityNew.Availability_end_time = txtEndTime.Text
                availibilityNew.Availability_notes = txtName.Text
                availibilityNew.Availability_provider_id = txtProviderID.Text
                database.tblAvailabilities.Add(availibilityNew)
                database.SaveChanges()

                'RecordDatabaseTransaction(INSERT, availibilityNew)
            End Using

        Catch ex As HttpException
            lblMessage.Text = "Error occured updating database record."
            lblMessage.Visible = True
        End Try

        'Close modal Form
        Util.Modal.Close(Me, "OK")
    End Sub
End Class