Imports System.Data.Entity

Public Class ProductContext
    Inherits DbContext


    Public Property Products() As DbSet(Of Product)
    Public Property Categories() As DbSet(Of Category)

    Public Overrides Function SaveChanges() As Integer
        Try
            Return MyBase.SaveChanges()
        Catch dbEx As Validation.DbEntityValidationException
            For Each [error] In From validationErrors In dbEx.EntityValidationErrors
                                From validationError In validationErrors.ValidationErrors
                                Select New With {.PropertyName = validationError.PropertyName,
                                                 .ErrorMessage = validationError.ErrorMessage,
                                                 .ClassFullName = validationErrors.Entry.Entity.GetType().FullName}

                Diagnostics.Trace.TraceInformation("Class: {0}, Property: {1}, Error: {2}",
                                                   [error].ClassFullName,
                                                   [error].PropertyName,
                                                   [error].ErrorMessage)
            Next
            Throw
        End Try

    End Function
    
End Class
