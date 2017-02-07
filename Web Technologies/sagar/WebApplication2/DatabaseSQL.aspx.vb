Public Class WebForm4
    Inherits System.Web.UI.Page

    Dim dbConn, sql, dbcomm, dbread

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        dbConn = New OleDb.OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\DWIT\Desktop\Student.accdb;Persist Security Info=True")
        dbConn.Open()
        sql = "SELECT * FROM stdTable"
        dbcomm = New OleDb.OleDbCommand(sql, dbConn)
        dbread = dbcomm.ExecuteReader()
        sqlRepeater.DataSource = dbread
        sqlRepeater.DataBind()

    End Sub

    Private Sub WebForm4_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Unload
        dbread.Close()
        dbConn.Close()
    End Sub
End Class