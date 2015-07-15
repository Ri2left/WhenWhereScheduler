Imports System.Linq
Imports System.Data.Entity
Imports System.Data.Entity.Infrastructure
Imports System.Web
Imports System.Web.Services
Imports System.Linq.Expressions
Imports System.Data.SqlClient
Imports Microsoft.AspNet.Identity.Owin
Imports Microsoft.AspNet.Identity

'=======================================================
'Class: ProviderDashboard
'Description: This class is the heart of the provider logic.
'This is the main page that is called when a provider is logged in.
'From this page a provider can: View Dashboard, Manage Clients, 
'and go to account settings.
'=======================================================
Public Class ProviderDashboard
    Inherits System.Web.UI.Page

    Protected m_bIsEmailConfirmed As Boolean

    '=======================================================
    'Event: Page_Load
    'Entry point for ProviderDashboard Logic
    '=======================================================
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Me.Master.FindControl("Header").Visible = False

            LoadCalendarData()

            'Initialize Calendar
            CalendarAvailabilities.StartDate = Today
            CalendarAvailabilities.Days = 7

            'Settings for modal popup when making a new event
            CalendarAvailabilities.TimeRangeSelectedHandling = DayPilot.Web.Ui.Enums.EventClickHandlingEnum.JavaScript
            CalendarAvailabilities.TimeRangeSelectedJavaScript = "createEvent(start, end, resource);"

            'CalendarAvailabilities.StartDate.Time()

            'Settings for modal popup when editing an event
            'DayPilotCalendar1.EventClickHandling = DayPilot.Web.Ui.Enums.EventClickHandlingEnum.JavaScript
            'DayPilotCalendar1.EventClickJavaScript = "editEvent(e)"

            Dim userManager = HttpContext.Current.GetOwinContext.GetUserManager(Of ApplicationUserManager)()
            m_bIsEmailConfirmed = userManager.IsEmailConfirmed(Context.User.Identity.GetUserId())



        End If
    End Sub
    '=======================================================
    'Event: LoadCalendarData
    'Pulls calendar data for this Provider
    '=======================================================
    Protected Sub LoadCalendarData()
        Using database As New WhenWhereEntities

            'For all events for this provider
            Dim dataForThisProvider As IQueryable(Of tblAvailability) = database.tblAvailabilities
            Dim strSelectedProviderID As String = 1

            Dim query As IEnumerable(Of tblAvailability) = (From availbility In dataForThisProvider _
                         Select availbility Where availbility.Availability_provider_id = strSelectedProviderID)

            'Copy over into DataTable
            Dim dtCalendar As DataTable
            dtCalendar = New DataTable()
            dtCalendar.Columns.Add("start", GetType(DateTime))
            dtCalendar.Columns.Add("end", GetType(DateTime))
            dtCalendar.Columns.Add("name", GetType(String))
            dtCalendar.Columns.Add("id", GetType(String))

            For Each row As tblAvailability In query
                Dim dataRow = dtCalendar.NewRow()
                dataRow("id") = row.Availability_id
                dataRow("start") = row.Availability_start_time
                dataRow("end") = row.Availability_end_time
                dataRow("name") = row.Availability_notes
                dtCalendar.Rows.Add(dataRow)
            Next

            'Commit Changes
            dtCalendar.AcceptChanges()

            'Set Values
            CalendarAvailabilities.DataSource = dtCalendar
            CalendarAvailabilities.DataStartField = "start"
            CalendarAvailabilities.DataEndField = "end"
            CalendarAvailabilities.DataIdField = "id"
            CalendarAvailabilities.DataTextField = "name"

            DataBind()
        End Using
    End Sub
    '=======================================================
    'Function: GetProvider
    'Description: This parses the query string to return
    'selected provider
    '=======================================================
    Public Function GetProvider() As IQueryable(Of tblProvider)
        Dim providerID As String = 1
        Dim database As New WhenWhereEntities
        Dim providerSelected As IQueryable(Of tblProvider) = database.tblProviders.Where(Function(p) p.Provider_id = providerID)
        Return providerSelected
    End Function
    '=======================================================
    'Function: UpdateButton_Click
    'Description: This is called when a user updates the
    'selected provider record
    '=======================================================
    Sub UpdateButton_Click(ByVal sender As Object, ByVal e As EventArgs)
        'Get Values to Save
        Dim id As String = Request.QueryString("id")
        Dim txtFirstName As TextBox = FormProviderDetail.FindControl("EditFirstName")
        Dim txtJoinedDate As TextBox = FormProviderDetail.FindControl("EditJoinedDate")

        'Update Database
        Try
            Using database As New WhenWhereEntities
                Dim providerToUpdate As IQueryable(Of tblProvider) = database.tblProviders

                Dim providerQuery = _
                    (From p In providerToUpdate _
                     Select p Where p.Provider_id = id).FirstOrDefault()

                providerQuery.Provider_display_short_name = txtFirstName.Text
                providerQuery.Provider_joined_date = txtJoinedDate.Text


                database.SaveChanges()
                'RecordDatabaseTransaction()

            End Using

        Catch ex As HttpException
            'MessageLabel.Text = ""
        End Try

    End Sub
    '=======================================================
    'Function: CalendarAvailabilities_Command
    'Description: This is called from the javascript function
    'after the modal window is closed.
    '=======================================================
    Private Sub CalendarAvailabilities_Command(sender As Object, e As DayPilot.Web.Ui.Events.CommandEventArgs) Handles CalendarAvailabilities.Command
        '
        If (e.Command = "refresh") Then
            LoadCalendarData()
            CalendarAvailabilities.Update()
        End If

    End Sub
    '=======================================================
    'Function: Unnamed_LoggingOut
    'Description: This is called to log-out current user
    '=======================================================
    Protected Sub Unnamed_LoggingOut(sender As Object, e As LoginCancelEventArgs)
        Context.GetOwinContext().Authentication.SignOut()
    End Sub

End Class