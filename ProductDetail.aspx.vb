Imports System.Data
Imports System.Data.SqlClient

Public Class ProductDetail
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("ProductNo") <> "" Then
            Dim strConn As String = System.Configuration.ConfigurationManager.ConnectionStrings("OnlineStoreConnectionString").ConnectionString
            Dim connProduct As SqlConnection
            Dim cmdProduct As SqlCommand
            Dim drProduct As SqlDataReader
            Dim strSQL As String = "Select * from Product Where ID = " & CInt(Request.QueryString("ProductNo"))
            connProduct = New SqlConnection(strConn)
            cmdProduct = New SqlCommand(strSQL, connProduct)
            connProduct.Open()
            drProduct = cmdProduct.ExecuteReader(CommandBehavior.CloseConnection)
            If drProduct.Read() Then
                lblProductName.Text = drProduct.Item("ProductName")
                lblProductNo.Text = drProduct.Item("ProductNo")
                lblPrice.Text = drProduct.Item("Price")
                Dim connSubCat As SqlConnection
                Dim cmdSubCat As SqlCommand
                Dim drSubCat As SqlDataReader
                Dim strSQLSubCat As String = "Select * from Category Where Id= " & CInt(drProduct.Item("SubCategoryID"))
                connSubCat = New SqlConnection(strConn)
                cmdSubCat = New SqlCommand(strSQLSubCat, connSubCat)
                connSubCat.Open()
                drSubCat = cmdSubCat.ExecuteReader()

            End If
        End If
        If Request.QueryString("MainCategoryID") <> "" Then
            Dim strConn As String = System.Configuration.ConfigurationManager.ConnectionStrings("OnlineStoreConnectionString").ConnectionString
            'lblBreadCrumb1.Text = "<a href='Category.aspx?MainCategoryID=" + Request.QueryString("MainCategoryID") + "&MainCategoryName=" + Request.QueryString("MainCategoryName") + " '>/ " + Request.QueryString("MainCategoryName") + "</a>"
            Dim connMainCat As SqlConnection
            Dim cmdMainCat As SqlCommand
            Dim drMainCat As SqlDataReader
            Dim strSQLMainCat As String = " Select * from Category Where Id=" & CInt(Request.QueryString("MainCategoryID"))
            connMainCat = New SqlConnection(strConn)
            cmdMainCat = New SqlCommand(strSQLMainCat, connMainCat)
            connMainCat.Open()
            drMainCat = cmdMainCat.ExecuteReader()
            If drMainCat.Read() Then
                lblParentCategory.Text = drMainCat.Item("CategoryName")
            End If
            SqlSubCategories.SelectCommand = "Select * From Category Where Parent = " & CInt(Request.QueryString("MainCategoryID"))
            SqlSubCategories.DataBind()
        End If
    End Sub

End Class