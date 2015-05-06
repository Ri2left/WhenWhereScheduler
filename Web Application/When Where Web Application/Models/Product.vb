Imports System.ComponentModel.DataAnnotations

Public Class Product
    Private ProductIDValue As Integer
    Private ProductNameValue As String
    Private ListPriceValue As Double
    Private ColorValue As ProductColor
    Private InStockValue As Boolean
    Private DescriptionValue As String
    Private CategoryIDValue As Integer
    Private CategoryValue As Category


    <Display(Name:="Product Number")> _
    <Range(0, 5000)> _
    <ScaffoldColumn(False)>
    Public Property ProductID() As Integer
        Get
            Return ProductIDValue
        End Get
        Set(ByVal value As Integer)
            ProductIDValue = value
        End Set
    End Property

    <Display(Name:="Name")> _
    <Required()> _
    <StringLength(100)>
    Public Property ProductName() As String
        Get
            Return ProductNameValue
        End Get
        Set(ByVal value As String)
            ProductNameValue = value
        End Set
    End Property

    <Display(Name:="Price")> _
    <DataType(DataType.Currency)> _
    Public Property UnitPrice() As Double
        Get
            Return ListPriceValue
        End Get
        Set(ByVal value As Double)
            ListPriceValue = value
        End Set
    End Property
    <Display(Name:="Product Description")> _
    <Required()> _
    <DataType(DataType.MultilineText)>
    Public Property Description() As String
        Get
            Return DescriptionValue
        End Get
        Set(ByVal value As String)
            DescriptionValue = value
        End Set
    End Property

    <EnumDataType(GetType(ProductColor))> _
    Public Property Color() As ProductColor
        Get
            Return ColorValue
        End Get
        Set(ByVal value As ProductColor)
            ColorValue = value
        End Set
    End Property

    <Display(Name:="Available")> _
    Public Property InStock() As Boolean
        Get
            Return InStockValue
        End Get
        Set(ByVal value As Boolean)
            InStockValue = value
        End Set
    End Property

    Public Property ImagePath() As String
        Get
            Return "\\"
        End Get
        Set(ByVal value As String)

        End Set
    End Property
    Public Property CategoryID As Integer
        Get
            Return CategoryIDValue
        End Get
        Set(ByVal value As Integer)
            CategoryIDValue = value
        End Set
    End Property
    Public Property Category As Category
        Get
            Return CategoryValue
        End Get
        Set(ByVal value As Category)
            CategoryValue = value
        End Set
    End Property
    Public Sub New()

    End Sub

    Public Sub New(ByVal _productID As Integer, ByVal _productName As String, _
                   ByVal _listPrice As Double, ByVal _color As ProductColor, _
                   ByVal _inStock As Boolean)
        Me.ProductID = _productID
        Me.ProductName = _productName
        Me.UnitPrice = _listPrice
        Me.Color = _color
        Me.InStock = _inStock
    End Sub
End Class
Public Enum ProductColor
    Red
    White
    Purple
    Blue
End Enum
