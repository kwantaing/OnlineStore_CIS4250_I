Imports System.Data
Imports System.Data.SqlClient
Public Class Main
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strConn As String = System.Configuration.ConfigurationManager.ConnectionStrings("OnlineStoreConnectionString").ConnectionString
        Dim connMainCategory As SqlConnection
        Dim cmdMainCategory As SqlCommand
        Dim drMainCategory As SqlDataReader
        Dim strSQL As String = "Select * from Category Where Parent = 0"
        connMainCategory = New SqlConnection(strConn)
        cmdMainCategory = New SqlCommand(strSQL, connMainCategory)
        connMainCategory.Open()
        drMainCategory = cmdMainCategory.ExecuteReader(CommandBehavior.CloseConnection)
        Dim strMainCategory As String = ""
        Do While drMainCategory.Read()
            strMainCategory = strMainCategory + "<li><a href='Category.aspx?MainCategoryID=" + Trim(drMainCategory("Id")) + "&MainCategoryName=" + Trim(drMainCategory("CategoryName")) + " '>" + Trim(drMainCategory("CategoryName")) + "</a></li>"
        Loop
        ' lblMainCategory.Text = strMainCategory
    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        If tbSearch.Value <> "" Then
            Dim strConnSearchByID As String = System.Configuration.ConfigurationManager.ConnectionStrings("OnlineStoreConnectionString").ConnectionString
            Dim connSearchByID As SqlConnection
            Dim cmdSearchByID As SqlCommand
            Dim drSearchByID As SqlDataReader
            Dim strSQLSearchByID As String = "Select * from Product Where ProductNo = '" + tbSearch.Value.ToString() + "'"
            connSearchByID = New SqlConnection(strConnSearchByID)
            cmdSearchByID = New SqlCommand(strSQLSearchByID, connSearchByID)
            connSearchByID.Open()
            drSearchByID = cmdSearchByID.ExecuteReader()
            If drSearchByID.Read() Then
                Dim strRedirectString As String = "ProductDetail.aspx?ProductNo=" & Trim(drSearchByID("Id"))
                Response.Redirect(strRedirectString)
            Else
                Dim strRedirectString As String = "Category.aspx?SearchString=" & Trim(tbSearch.Value.ToString())
                Response.Redirect(strRedirectString)
            End If
        End If
    End Sub

End Class