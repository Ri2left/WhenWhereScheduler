Imports System.Collections.Generic
Imports System.Data.Entity

Public Class ProductDatabaseInitialization
    Inherits DropCreateDatabaseIfModelChanges(Of ProductContext)


    Protected Overrides Sub Seed(context As ProductContext)
        MyBase.Seed(context)


        For Each c As Category In GetCategories()
            context.Categories.Add(c)
        Next

        For Each p As Product In GetProducts()
            context.Products.Add(p)
        Next

    End Sub

    Private Function GetCategories() As List(Of Category)
        Dim categories As New List(Of Category) From {
          New Category With {.CategoryID = 1, .CategoryName = "Cars"}, _
          New Category With {.CategoryID = 2, .CategoryName = "Planes"}, _
          New Category With {.CategoryID = 3, .CategoryName = "Trucks"}
        }

        Return categories
    End Function

    Private Function GetProducts() As List(Of Product)
        Dim products As New List(Of Product) From {
          New Product With {.ProductID = 1, .ProductName = "Convertible Car", .Description = "This convertible car is fast! The engine is powered by a neutrino based battery (not included)." + "Power it up and let it go!", .ImagePath = "carconvert.png", .UnitPrice = 22.5, .CategoryID = 1}, _
          New Product With {.ProductID = 2, .ProductName = "Old-time Car", .Description = "There's nothing old about this toy car, except it's looks. Compatible with other old toy cars.", .ImagePath = "carearly.png", .UnitPrice = 15.95, .CategoryID = 1}, _
          New Product With {.ProductID = 3, .ProductName = "Fast Car", .Description = "Yes this car is fast, but it also floats in water.", .ImagePath = "carfast.png", .UnitPrice = 32.99, .CategoryID = 1}, _
          New Product With {.ProductID = 4, .ProductName = "Super Fast Car", .Description = "Use this super fast car to entertain guests. Lights and doors work!", .ImagePath = "carfaster.png", .UnitPrice = 8.95, .CategoryID = 1}
      }

        Return products
    End Function

End Class
