<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pruebafrom.aspx.cs" Inherits="Front.pruebafrom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<link href="Resources/css/EstilosGenerales.css" rel="stylesheet" />--%>
        <%--<link href="Resources/css/AdminLTE.css" rel="stylesheet" />--%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body class="skin-blue">
 
       
 <%--      html, body {
    min-height: 100%;
    padding: 0;
    margin: 0;
    font-family: 'Source Sans Pro'.Arial, "Helvetica Neue",
} como para reiniciar todo --%>


 <%--   
     
     html,
body {
  overflow-x: hidden!important;
  font-family: 'Source Sans Pro', sans-serif;
  -webkit-font-smoothing: antialiased;     borrar esta linea
  min-height: 100%;
  background: #f9f9f9;
}
     
     .wrapper {
  min-height: 100%;
}

     /* Define 2 column template */
.right-side,
.left-side {
  min-height: 100%;
  display: block;
}
/*right side - contins main content*/
.right-side {
  background-color: #f9f9f9;
  margin-left: 220px;
}
/*left side - contains sidebar*/
.left-side {
  position: absolute;
  width: 220px;
  top: 0;
}        BUSCAR LAS CLASES NECESARIAS Y APRENDERTE ESAS INVESTIGA BOOTSTRAP     --%>

     
    <header class="header">
        <a href="PaginaInicio.aspx" class="logo">Mi Camioncito
        </a>

        <nav class="navbar navbar-static-top" >
        </nav>

    </header>
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <aside class="left-side sidebar-offcanvas">
            <section class="sidebar">
                
                <ul class="sidebar-menu">
                     <li>
                        <a href="VerClientes.aspx">
                            <span>VER CLIENTES</span>
                        </a>    
                    </li>
                    <li>
                        <a href="AgregarClientes.aspx">
                            <span>AGREGAR CLIENTES</span>
                        </a>
                    </li>
                    <li>
                        <a href="ModificarClientes.aspx">
                            <span>MODIFICAR CLIENTES</span>
                        </a>
                    </li>
                    <li>
                        <a href="EliminarClientes.aspx">
                            <span>ELIMINAR CLIENTES</span>
                        </a>
                    </li>
                    <li>
                        <a href="VerVehiculos.aspx">
                            <span>VER VEHICULOS</span>
                        </a>    
                    </li>
                    <li>
                        <a href="AgregarVehiculos.aspx">
                            <span>AGREGAR VEHICULOS</span>
                        </a>
                    </li>
                    <li>
                        <a href="AgregarSolicitudes.aspx">
                            <span>AGREGAR SOLICITUDES</span>
                        </a>
                    </li>
                    <li>
                        <a href="VerSolicitudes.aspx">
                              <span>VER SOLICITUDES</span>
                        </a>
                    </li>
                    <li>
                        <a href="ModificarSolicitudes.aspx">
                            
                            <span>ACTUALIZAR SOLICITUDES</span>
                        </a>
                    </li>
                </ul>

            </section>
        </aside>
    </div>
    <aside class="right-side">
        <section class="content-header">
            <h1>
                <asp:Label ID="lblOpcion" runat="server" Text="Servicio, Calidad, Precio...">
                </asp:Label>
            </h1>
        </section>
        <section class="content">
            <form id="form2" runat="server">
                <div>
                    <asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server">
                        Carga el diseño heredado
                    </asp:ContentPlaceHolder>
                </div>
            </form>
        </section>
    </aside>



</body>
</html>
