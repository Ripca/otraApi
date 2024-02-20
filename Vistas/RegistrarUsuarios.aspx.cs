using Front.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Json;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Front.Vistas
{
    public partial class RegistrarUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async Task AccionRegistrar(object sender, EventArgs e)
        {
            string nombreUsuario = txtNombre.Text;
            string correo = txtCorreo.Text;
            Usuario usuario = new Usuario() { NombreUsuario=nombreUsuario,Correo=correo};
            string url = "https://localhost:44390/api/usuario";
            using (HttpClient clienteHttp =new HttpClient())
            {
                try
                {
                HttpResponseMessage response = await clienteHttp.PostAsJsonAsync(url, usuario);
                    if (response.IsSuccessStatusCode)
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(),"RegistroBuenoScript","alert('SI se pudo');",true);
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "RegistroMaloScript", "alert('No se pudo');", true);

                    }
                }
                catch (Exception)
                {

                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "RegistroErrorScript", "alert('ERROR');", true);

                }
            }


        }

        protected async void btnRegistrar_Click(object sender, EventArgs e)
        {
            await AccionRegistrar(sender, e);
        }
    }
}