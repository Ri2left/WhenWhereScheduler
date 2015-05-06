Imports System
Imports System.Linq
Imports System.Data.Entity

Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
       
    End Sub

    Public Function GetProvider() As IQueryable(Of WhenWhereEntities)

        'Dim db As New WhenWhereEntities
        'Dim provider As tblProvider = db.tblProviders.Where(Function(p) p.Provider_id = "1").First()
        'Return provider
    End Function



End Class