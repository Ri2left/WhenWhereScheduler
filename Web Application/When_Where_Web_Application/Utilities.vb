Imports System.Net.Mail
Imports System.Net.Mime

'=======================================================
'Module: Utilities
'Description: This class is used to store utility functions
'that are used everywhere in the code. Some examples
'include sending email or logging data to a database.
'=======================================================
Public Module Utilities

    Public Sub SendEmail(strToAddress As String, strSubject As String, strMessageText As String, strMessageHTML As String)
        Dim message As New MailMessage

        Dim strFromAddress As String = ConfigurationManager.AppSettings("defaultFromAddress")
        Dim strWebsiteName As String = ConfigurationManager.AppSettings("websiteName")
        Dim from As New MailAddress(strFromAddress, strWebsiteName)
       
        If Not strToAddress.Equals("") Then
            Dim strToArray As String() = strToAddress.Split(",")
            For Each strAddress As String In strToArray
                message.To.Add(strAddress)
            Next
        End If

        message.From = [from]
        message.Subject = strSubject
        message.AlternateViews.Add(AlternateView.CreateAlternateViewFromString(strMessageText, Nothing, MediaTypeNames.Text.Plain))
        message.AlternateViews.Add(AlternateView.CreateAlternateViewFromString(strMessageHTML, Nothing, MediaTypeNames.Text.Html))


        Dim client As SmtpClient = New System.Net.Mail.SmtpClient()
        Try
            'client.EnableSsl = True
            client.Send(message)
        Catch ex As Exception
            System.Diagnostics.Trace.WriteLine(ex.ToString())
        End Try

    End Sub


    Public Function CreateNewWhenWhereUser(ByVal user As ApplicationUser) As Integer
        Dim provider As New tblProvider With _
            {.Provider_is_active = True, _
             .Provider_joined_date = Now(), _
             .Provider_ASPUserID = user.Id}

        Dim db = New WhenWhereEntities()
        db.tblProviders.Add(provider)

        Return db.SaveChanges()
    End Function

End Module
