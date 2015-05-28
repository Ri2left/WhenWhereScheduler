﻿Imports System.Net.Mail

'=======================================================
'Module: Utilities
'Description: This class is used to store utility functions
'that are used everywhere in the code. Some examples
'include sending email or logging data to a database.
'=======================================================
Public Module Utilities

    Public Sub SendEmail(strToAddress As String, strSubject As String, strMessage As String)
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
        message.IsBodyHtml = True
        message.BodyEncoding = System.Text.Encoding.UTF8

        message.Body = strMessage
        message.Subject = strSubject

        Dim client As SmtpClient = New System.Net.Mail.SmtpClient()
        Try
            'Client.Send will send this message
            'client.EnableSsl = True
            client.Send(message)
        Catch ex As Exception
            System.Diagnostics.Trace.WriteLine(ex.ToString())
        End Try

    End Sub
End Module
