Public Class XMLPARSING
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim MyCountries = New DataSet
            MyCountries.ReadXml(MapPath("countries.xml"))
            XMLrbl.DataSource = MyCountries
            XMLrbl.DataValueField = "value"
            XMLrbl.DataTextField = "text"
            XMLrbl.DataBind()
        End If

    End Sub

    Protected Sub XMLrbl_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles XMLrbl.SelectedIndexChanged
        MyLabel.Text = "My Fav Country is: " & XMLrbl.SelectedItem.Text
    End Sub
End Class