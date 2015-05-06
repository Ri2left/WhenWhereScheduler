Imports System.Web.ModelBinding
Imports System.Linq


Public Class ProductList
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Public Function GetProducts() As IQueryable(Of Product)
        Dim db As ProductContext = New ProductContext()
        Dim query As IQueryable(Of Product) = db.Products
        Dim categoryId As String = Request.QueryString("id")

        If Not IsNothing(categoryId) Then
            If Integer.Parse(categoryId) > 0 Then
                query = query.Where(Function(p As Product) p.CategoryID = categoryId)
            End If
        End If

        Return query
    End Function
End Class