Imports System.Web.Optimization
Imports System.Data.Entity

Public Class Global_asax
    Inherits HttpApplication

    Sub Application_Start(sender As Object, e As EventArgs)
        ' Fires when the application is started
        RouteConfig.RegisterRoutes(RouteTable.Routes)
        BundleConfig.RegisterBundles(BundleTable.Bundles)

        'Initialize product database
        Database.SetInitializer(New ProductDatabaseInitialization)

    End Sub
End Class