using Front.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Front.Vistas
{
    public partial class ModificarUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void btnModificar_Click(object sender, EventArgs e)
        {
            int idUsuario = Convert.ToInt32(txtIdModificar.Text);
            string url = "https://localhost:44390/api/usuario/" + idUsuario;

            using (HttpClient clienteHttp=new HttpClient())
            {
                try
                {
                    HttpResponseMessage response = await clienteHttp.GetAsync(url);
                    if (response.IsSuccessStatusCode)
                    {
                        var usuario = await response.Content.ReadAsAsync<Usuario>();
                        txtNombre.Text = usuario.NombreUsuario;
                        txtCorreo.Text = usuario.Correo;
                        //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "RegistroEliminadoScript", "alert('Si se elimino');", true);
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "UsuarioModificarScript", "alert('No se encontro al usuario');", true);
                    }
                }
                catch (Exception)
                {

                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "ErrorModificar", "alert('ERROR');", true);

                }
            }

        }

        protected async Task AccionModificar(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario() { IdUsuario = Convert.ToInt32(txtIdModificar.Text), NombreUsuario=txtNombre.Text, Correo=txtCorreo.Text };
            string url = "https://localhost:44390/api/usuario";

            using (HttpClient clienteHttp=new HttpClient())
            {
                try
                {
                    HttpResponseMessage response = await clienteHttp.PutAsJsonAsync(url,usuario);
                    if (response.IsSuccessStatusCode)
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "RegistroModificadoScript", "alert('Se modifico Correctamente');", true);
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "RegistroNoModificadoScript", "alert('No se pudo modificar');", true);
                    }
                }
                catch (Exception)
                {

                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "ErrorModificarScript", "alert('ERROR');", true);
                }
            }   
        }

        protected async void btnGuardar_Click(object sender, EventArgs e)
        {
            await AccionModificar(sender,e);
        }
    }
}