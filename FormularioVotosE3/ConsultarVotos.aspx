<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarVotos.aspx.cs" Inherits="FormularioVotosE3.ConsultarVotos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/Grid.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <label for="Total Votos">
	<i class="far fa-user"></i>Total Votos
    </label>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
        <asp:GridView runat="server" ID="datagrid" PageSize="10" HorizontalAlign="Center"
        CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
        RowStyle-CssClass="rows" AllowPaging="True" BorderStyle="Inset" />
        </div>
    </form>
</body>
</html>
