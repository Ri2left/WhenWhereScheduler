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
    '=======================================================
    'Event: Page_Load
    'Get/Set property for use with 3rd party DHXScheduler
    '=======================================================
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim providerSelected As IQueryable(Of tblProvider) = GetProvider()

        End If
    End Sub
    '=======================================================
    'Event: Page_Load
    'Get/Set property for use with 3rd party DHXScheduler
    '=======================================================
    Sub SubmitClientEmail_Click(sender As Object, e As EventArgs)

    End Sub
    '=======================================================
    'Function: GetProvider
    'Description: This parses the query string to return
    'selected provider
    '=======================================================
    Public Function GetProvider() As IQueryable(Of tblProvider)
        Dim providerID As String = Request.QueryString("id")
        Dim database As New WhenWhereEntities
        Dim providerSelected As IQueryable(Of tblProvider) = database.tblProviders.Where(Function(p) p.Provider_id = providerID)
        Return providerSelected
    End Function
End Class