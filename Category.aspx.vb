Imports System.Data
Imports System.Data.SqlClient
Public Class Category
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("SearchString") <> "" Then
            SqlProductList.SelectCommand = "Select * From Product Where ProductName Like '%" + Request.QueryString("SearchString") + "%'"
            Response.Write(SqlProductList.SelectCommand)
            SqlProductList.DataBind()
            lblProductList.Text = "Search result For " + Request.QueryString("SearchString")
            lblParentCategory.Text = "All Categories"

            'All Categories Shown
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
            lblMainCategories.Text = strMainCategory

        Else
            If Request.QueryString("MainCategoryID") <> "" Then
                lblBreadCrumb1.Text = "<a href='Category.aspx?MainCategoryID=" + Request.QueryString("MainCategoryID") + "&MainCategoryName=" + Request.QueryString("MainCategoryName") + " '>/ " + Request.QueryString("MainCategoryName") + "</a>"
                lblParentCategory.Text = Request.QueryString("MainCategoryName")
                SqlSubCategories.SelectCommand = "Select * From Category Where Parent = " & CInt(Request.QueryString("MainCategoryID"))
                SqlSubCategories.DataBind()
                If Request.QueryString("SubCategoryID") <> "" Then
                    lblBreadCrumb1.CssClass.Replace("active", "")
                    lblBreadCrumb2.Text = "/ " + Request.QueryString("SubCategoryName")
                    SqlProductList.SelectCommand = "Select * From Product Where SubCategoryID = " & CInt(Request.QueryString("SubCategoryID"))
                    SqlProductList.DataBind()
                    lblProductList.Text = "Products For " + Request.QueryString("SubCategoryName")
                Else
                    SqlProductList.SelectCommand = "Select * From Product Where MainCategoryID = " & CInt(Request.QueryString("MainCategoryID")) & " And Featured = 'Y'"
                    SqlProductList.DataBind()
                    lblProductList.Text = "Featured Products"
                End If
            Else
                lblParentCategory.Text = "All Categories"
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
                lblMainCategories.Text = strMainCategory
            End If
        End If
    End Sub

End Class