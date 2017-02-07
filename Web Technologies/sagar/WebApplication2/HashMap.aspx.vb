Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim mycountries = New Hashtable
            mycountries.Add("N", "Norway")
            mycountries.Add("S", "Sweden")
            mycountries.Add("F", "France")
            mycountries.Add("I", "Italy")
            RadioHash.DataSource = mycountries
            RadioHash.DataValueField = "Key"
            RadioHash.DataTextField = "Value"
            RadioHash.DataBind()
        End If
    End Sub


    Sub displayMessage(ByVal s As Object, ByVal e As EventArgs)
        MyLabel.Text = "Your favorite country is: " & RadioHash.SelectedItem.Text
    End Sub
End Class