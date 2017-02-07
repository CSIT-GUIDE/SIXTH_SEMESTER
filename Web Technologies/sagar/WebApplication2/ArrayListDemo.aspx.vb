Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim mycountries = New ArrayList
            mycountries.Add("Norway")
            mycountries.Add("Sweden")
            mycountries.Add("France")
            mycountries.Add("Italy")
            mycountries.TrimToSize()
            MyRadioButtonList.DataSource = mycountries
            MyRadioButtonList.DataBind()
        End If
    End Sub
End Class