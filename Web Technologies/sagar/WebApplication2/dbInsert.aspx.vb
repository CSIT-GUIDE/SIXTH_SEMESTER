Public Class dbInsert
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("username") = "Donald Duck"
        Session("age") = 50
        Response.Write("Welcome " & Session("username"))
    End Sub

    Sub Insert_Click(ByVal Src As Object, ByVal E As EventArgs)
        Dim cnAccess As New OleDb.OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\DWIT\Desktop\Student.accdb")
        cnAccess.Open()
        Dim sID, sName, sEmail, sScore, sDivision, sInsertSQL As String
        sID = ssid.Text
        sName = name.Text
        sEmail = email.Text
        sScore = score.Text
        sDivision = division.Text
        sInsertSQL = "insert into stdTable values(" & sID & ",'" & sName & "','" & sEmail & "','" & sScore & "','" & sDivision & "')"
        Dim cmdInsert As New OleDb.OleDbCommand(sInsertSQL, cnAccess)
        cmdInsert.ExecuteNonQuery()
        Response.Write("Data recorded!")
    End Sub
End Class
