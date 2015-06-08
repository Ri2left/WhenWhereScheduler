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

    Const EMAIL_FREQUENCEY_IMMEDIATELY As Integer = 0
    Const EMAIL_FREQUENCEY_ONCE_AT_CREATION_AND_2_HRS_BEFORE As Integer = 1
    Const EMAIL_FREQUENCEY_ONCE_AT_CREATION_AND_24_HRS_BEFORE As Integer = 2
    Const EMAIL_FREQUENCEY_ANY_CHANGES_IN_LAST_10_MINUTES As Integer = 3

    Private m_database As WhenWhereEntities

    '=======================================================
    'Event: Page_Load
    'Entry point for Account Settings Logic
    '=======================================================
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        m_database = New WhenWhereEntities
        Me.MaintainScrollPositionOnPostBack = True


        If Not IsPostBack Then
            'Get info from database
            Dim providerSelected As tblProvider = GetProvider()

            If Not providerSelected Is Nothing Then


                'Emaily Frequency Init
                Select Case providerSelected.Provider_to_email_frequency
                    Case EMAIL_FREQUENCEY_IMMEDIATELY
                        Me.optNotifyImmediately.Checked = True
                    Case EMAIL_FREQUENCEY_ONCE_AT_CREATION_AND_2_HRS_BEFORE
                        Me.optNotifyOnceAtEventCreationAnd2hrsBefore.Checked = True
                    Case EMAIL_FREQUENCEY_ONCE_AT_CREATION_AND_24_HRS_BEFORE
                        Me.optNotifyOnceAtEventCreationAnd24hrsBefore.Checked = True
                    Case EMAIL_FREQUENCEY_ANY_CHANGES_IN_LAST_10_MINUTES
                        Me.optNotifyAnyChangesInLast10minutes.Checked = True
                    Case Else
                        'Me.optNotifyAll.Checked = True
                End Select

                'Scratch Pad Init
                Me.txtAreaMyScratchPad.InnerText = providerSelected.Provider_scratch_pad_notes

                'Hide Error Message
                'Me.divError.Visible = False

            Else
                'Me.divError.Visible = True
            End If
        Else
            SaveData()
        End If
    End Sub
    '=======================================================
    'Event: SubmitClientEmail_Click
    'Not sure what this needs to do..
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
    'Function: SaveData
    'Description: This  saves data any time something changes on the page
    '=======================================================
    Sub SaveData()
        Dim providerSelected As tblProvider = GetProvider()

        If Not providerSelected Is Nothing Then

            'Email Frequency
            If optNotifyImmediately.Checked Then
                providerSelected.Provider_to_email_frequency = EMAIL_FREQUENCEY_IMMEDIATELY
            End If
            If optNotifyOnceAtEventCreationAnd2hrsBefore.Checked Then
                providerSelected.Provider_to_email_frequency = EMAIL_FREQUENCEY_ONCE_AT_CREATION_AND_2_HRS_BEFORE
            End If
            If optNotifyOnceAtEventCreationAnd24hrsBefore.Checked Then
                providerSelected.Provider_to_email_frequency = EMAIL_FREQUENCEY_ONCE_AT_CREATION_AND_24_HRS_BEFORE
            End If
            If optNotifyAnyChangesInLast10minutes.Checked Then
                providerSelected.Provider_to_email_frequency = EMAIL_FREQUENCEY_ANY_CHANGES_IN_LAST_10_MINUTES
            End If

            'Scratch Pad
            providerSelected.Provider_scratch_pad_notes = txtAreaMyScratchPad.Value



            'Save Data
            m_database.SaveChanges()
            'RecordDatabaseTransaction()
        Else
            'Me.divError.Visible = True
        End If
        

    End Sub
    ''=======================================================
    ''Event: btnTestNotification_Click
    ''Description: User click event, sends out a test email
    ''=======================================================
    'Private Sub btnTestNotification_Click(sender As Object, e As EventArgs) Handles btnTestNotification.Click
    '    'UPDATE: not sure what this is suposed to do? Send out a test email to provider?
    '    Dim providerSelected As tblProvider = GetProvider()
    '    Utilities.SendEmail("emily.ligotti@gmail.com", "This is a Test!", "Did you get this e-mail?")
    'End Sub

    ''=======================================================
    ''Event: TimerSave_Tick
    ''Description: Saves Data every 3 seconds
    ''=======================================================
    'Private Sub TimerSave_Tick(sender As Object, e As EventArgs) Handles TimerSave.Tick
    '    SaveData()
    'End Sub
End Class