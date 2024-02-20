<%@ Page Title="" Async="true" Language="C#" MasterPageFile="~/Vistas/General.Master" AutoEventWireup="true" CodeBehind="ModificarUsuarios.aspx.cs" Inherits="Front.Vistas.ModificarUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="padding:30px">
        <div>
            <asp:Label ID="lblIdModificar" runat="server" Text="Id del Usuario a modificar"></asp:Label>
            <asp:TextBox ID="txtIdModificar"  CssClass="form-control" runat="server"></asp:TextBox>
        </div>
            <asp:Button CssClass="btn btn-warning" style="margin:8px 0" ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" />
        <div>
            
         <div>
            <asp:Label ID="lblNombre" runat="server" Text="Nombre Usuario"></asp:Label>
            <asp:TextBox ID="txtNombre"  CssClass="form-control" runat="server"></asp:TextBox>
        </div>
            
             <div>
            <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
            <asp:TextBox ID="txtCorreo"  CssClass="form-control" runat="server"></asp:TextBox>
        </div>
            <asp:Button style="margin:8px 0" CssClass="btn btn-primary" ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />


        </div>


    </div>

</asp:Content>
