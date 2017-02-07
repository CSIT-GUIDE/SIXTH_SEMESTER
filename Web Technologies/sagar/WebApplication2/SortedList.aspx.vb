Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim mycountries = New SortedList
            mycountries.Add("N", "Norway")
            mycountries.Add("S", "Sweden")
            mycountries.Add("F", "France")
            mycountries.Add("I", "Italy")
            SortedRBL.DataSource = mycountries
            SortedRBL.DataValueField = "Key"
            SortedRBL.DataTextField = "Value"
            SortedRBL.DataBind()
        End If
    End Sub
    Protected Sub DisplayMessage(ByVal s As Object, ByVal e As EventArgs) Handles SortedRBL.SelectedIndexChanged
        MyLabel.Text = "My Favourite Country is : " & SortedRBL.SelectedItem.Text
    End Sub

End Class