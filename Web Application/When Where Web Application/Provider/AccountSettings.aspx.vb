Imports System.Web.UI.HtmlControls
'=======================================================
'Class: AccountSettings
'Description: This class is the heart of the provider logic.
'This is the main page that is called when a provider is logged in.
'From this page a provider can: View Dashboard, Manage Clients, 
'and go to account settings.
'=======================================================

Public Class AccountSettings
    Inherits System.Web.UI.Page

    Const EMAIL_FREQUENCEY_ALL As Integer = 0
    Const EMAIL_FREQUENCEY_DAILY As Integer = 1
    Const EMAIL_FREQUENCEY_WEEKLY As Integer = 2
    Const EMAIL_FREQUENCEY_NONE As Integer = 3

    Private m_database As WhenWhereEntities

    Private Sub AccountSettings_CommitTransaction(sender As Object, e As EventArgs) Handles Me.CommitTransaction

    End Sub

    '=======================================================
    'Event: Page_Load
    'Entry point for Account Settings Logic
    '=======================================================
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        m_database = New WhenWhereEntities

        If Not IsPostBack Then
            'Get info from database
            Dim providerSelected As tblProvider = GetProvider()

            'Provider Info Init
            Me.txtAreaMyInfo.InnerText = providerSelected.Provider_business_details_text

            'Emaily Frequency Init
            Select Case providerSelected.Provider_to_email_frequency
                Case EMAIL_FREQUENCEY_ALL
                    Me.optNotifyAll.Checked = True
                Case EMAIL_FREQUENCEY_DAILY
                    Me.optNotifyOncePerDay.Checked = True
                Case EMAIL_FREQUENCEY_WEEKLY
                    Me.optNotifyOncePerWeek.Checked = True
                Case EMAIL_FREQUENCEY_NONE
                    Me.optNotifyOff.Checked = True
                Case Else
                    Me.optNotifyAll.Checked = True
            End Select

            'Scratch Pad Init
            Me.txtAreaMyScratchPad.InnerText = providerSelected.Provider_scratch_pad_notes
        Else
            SaveData()
        End If
    End Sub
    '=======================================================
    'Event: Page_Load
    'Get/Set property for use with 3rd party DHXScheduler
    '=======================================================
    Sub SubmitClientEmail_Click(sender As Object, e As EventArgs)
        'Not sure what this does?
        'Sends an e-mail to a potential client?
        'That client then needs to sign-up, right?
    End Sub
    '=======================================================
    'Function: GetProvider
    'Description: This parses the query string to return
    'selected provider
    '=======================================================
    Public Function GetProvider() As tblProvider
        Dim providerID As String = Request.QueryString("id")
        Dim providerSelected As tblProvider = m_database.tblProviders.Where(Function(p) p.Provider_id = providerID).FirstOrDefault
        Return providerSelected
    End Function
    '=======================================================
    'Function: ServerChange
    'Description: This parses the query string to return
    'selected provider
    '=======================================================
    Sub SaveData()
        Dim providerSelected As tblProvider = GetProvider()

        'My Info
        providerSelected.Provider_business_details_text = txtAreaMyInfo.InnerText

        'Email Frequency
        If optNotifyAll.Checked Then
            providerSelected.Provider_to_email_frequency = EMAIL_FREQUENCEY_ALL
        End If
        If optNotifyOncePerDay.Checked Then
            providerSelected.Provider_to_email_frequency = EMAIL_FREQUENCEY_DAILY
        End If
        If optNotifyOncePerWeek.Checked Then
            providerSelected.Provider_to_email_frequency = EMAIL_FREQUENCEY_WEEKLY
        End If
        If optNotifyOff.Checked Then
            providerSelected.Provider_to_email_frequency = EMAIL_FREQUENCEY_NONE
        End If

        'Scratch Pad
        providerSelected.Provider_scratch_pad_notes = txtAreaMyScratchPad.InnerText

        'Save Data
        m_database.SaveChanges()
        'RecordDatabaseTransaction()

    End Sub

    Private Sub AccountSettings_SaveStateComplete(sender As Object, e As EventArgs) Handles Me.SaveStateComplete

    End Sub
End Class