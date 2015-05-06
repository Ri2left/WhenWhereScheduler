Imports System.ComponentModel.DataAnnotations
Public Class Category
    Private CategoryIDValue As Integer
    Private CategoryNameValue As String
    Private CategoryValue As Category
    Private DescriptionValue As String
    Public ProductsArray As ICollection(Of Product)

    <ScaffoldColumn(False)>
    Public Property CategoryID() As Integer
        Get
            Return CategoryIDValue
        End Get
        Set(ByVal value As Integer)
            CategoryIDValue = value
        End Set
    End Property

    <Display(Name:="Name")> _
    <Required()> _
    <StringLength(100)>
    Public Property CategoryName() As String
        Get
            Return CategoryNameValue
        End Get
        Set(ByVal value As String)
            CategoryNameValue = value
        End Set
    End Property


    <Display(Name:="Product Description")>
    Public Property Description() As String
        Get
            Return DescriptionValue
        End Get
        Set(ByVal value As String)
            DescriptionValue = value
        End Set
    End Property



End Class
