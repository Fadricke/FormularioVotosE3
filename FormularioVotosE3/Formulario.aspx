<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="FormularioVotosE3.Formulario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/Design.css" rel="stylesheet" />
    <title></title>
</head>
<body>
	<label for="Votacion 2024">
	<i class="far fa-user"></i>ELECCIONES 2024
</label>
	<div class="container">
    <form id="form1" runat="server">
	<div class="field" tabindex="1">
        <br />
        <br />
        <br />
		<label for="username">
			<i class="far fa-user"></i>Nombre
		</label>
		<asp:TextBox ID="txtNombre" runat="server" Width="400px"></asp:TextBox>
	</div>
	<div class="field" tabindex="2">
        <br />
		<label for="email">
			<i class="far fa-envelope"></i>Edad
		</label>
		<asp:TextBox ID="txtEdad" runat="server" Width="400px"></asp:TextBox>
	</div>
	<div class="field" tabindex="4">
        <br />
		<label for="message">
			<i class="far fa-edit"></i>Correo Electronico
		</label>
		<asp:TextBox ID="txtCorreo" runat="server" Width="400px"></asp:TextBox>
	    <br />
        <br />
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="IMAGES/PLN.png" alt="PLN" height="50" width="100"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="IMAGES/PAC.png" alt="PAC" height="50" width="100"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="IMAGES/PUSC.png" alt="PUSC"height="50" width="100"/><br />&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            PLN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PAC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PUSC
            <br />&nbsp;
	<br />
		<div class="field" tabindex="4">
		<label for="Partidos">
			<i class="far fa-edit"></i>Partidos
		<asp:DropDownList ID="ddlPartidos" runat="server" CssClass="container" Width="420px"></asp:DropDownList>
		</label>
	</div>
    <br/>
    <br/>
    <div>
	<asp:Button ID="BtnFinalizar" runat="server" Text="Finalizar Votacion" BackColor="Gray" BorderColor="#666666" BorderStyle="Solid" Width="420px" OnClick="BtnFinalizar_Click"/>
        <br />
        <br />
	<asp:Button ID="btnReporte" runat="server" Text="Consultar Votos" BackColor="Gray" BorderColor="#666666" BorderStyle="Solid" Width="420px" OnClick="btnReporte_Click"/>
    </div>
	</div>
	<br />
    <br />
</form>
</div>
</body>
</html>
