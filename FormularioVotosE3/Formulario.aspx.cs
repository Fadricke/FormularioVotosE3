using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormularioVotosE3
{
    public partial class Formulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarGrid();
            }
        }
        public void alertas(String texto)
        {
            string message = texto;
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

        }
        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("EXEC CONSULTA_PARTIDOS"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            ddlPartidos.DataSource = dt;
                            ddlPartidos.DataTextField = dt.Columns["NombrePartido"].ToString();
                            ddlPartidos.DataValueField = dt.Columns["PartidoID"].ToString();
                            ddlPartidos.DataBind();  // actualizar el grid view
                        }
                    }
                }
            }
        }
        protected void BtnFinalizar_Click(object sender, EventArgs e)
        {
            int resultado = CLASES.Formulario.AgregarVoto(txtNombre.Text, int.Parse(txtEdad.Text), txtCorreo.Text, int.Parse(ddlPartidos.SelectedValue.ToString()));


            if (resultado > 0)
            {
                alertas("El voto ha sido ingresado con exito");
                txtNombre.Text = string.Empty;
                txtEdad.Text = string.Empty;
                txtCorreo.Text = string.Empty;

                LlenarGrid();
            }
            else
            {
                alertas("Error al ingresar voto");

            }
        }
        protected void btnReporte_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConsultarVotos.aspx");
        }
    }
}