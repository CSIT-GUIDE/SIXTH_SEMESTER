Public Class DataListControl
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim mycdcatalog = New DataSet
            mycdcatalog.ReadXml(MapPath("cdcatalog.xml"))
            myDataList.DataSource = mycdcatalog
            myDataList.DataBind()
        End If
    End Sub

    Protected Sub myDataList_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles myDataList.SelectedIndexChanged

    End Sub
End Class