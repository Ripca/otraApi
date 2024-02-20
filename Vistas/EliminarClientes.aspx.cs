using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Front.Vistas
{
    public partial class EliminarClientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void btnBorrar_Click(object sender, EventArgs e)
        {
            int idEliminar = Convert.ToInt32(txtIdEliminar.Text);

            string url = "https://localhost:44390/api/usuario/" + idEliminar;

            try
            {
                using (HttpClient clienteHttp = new HttpClient())
                {
                    HttpResponseMessage response = await clienteHttp.DeleteAsync(url);
                    if (response.IsSuccessStatusCode)
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "RegistroEliminadoScript", "alert('Si se elimino');", true);

                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "RegistroNoEliminadoScript", "alert('No se elimino');", true);

                    }
                }
                
            }
            catch (Exception)
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "RegistroEliminarErrorScript", "alert('ERROR');", true);
            }




        }
    }
}