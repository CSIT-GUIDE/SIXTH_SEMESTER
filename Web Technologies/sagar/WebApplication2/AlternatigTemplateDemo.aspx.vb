﻿Public Class AlternatigTemplateDemo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim mycdcatalog = New DataSet
            mycdcatalog.ReadXml(MapPath("cdcatalog.xml"))
            catalogCD.DataSource = mycdcatalog
            catalogCD.DataBind()
        End If

    End Sub

End Class