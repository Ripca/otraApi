<%@ Page Title="" Async="true" Language="C#" MasterPageFile="~/Vistas/General.Master" AutoEventWireup="true" CodeBehind="EliminarClientes.aspx.cs" Inherits="Front.Vistas.EliminarClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="padding:30px">
        <div>
            <asp:Label ID="lblIdEliminar" runat="server" Text="Ingrese el id a eliminar"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="txtIdEliminar" runat="server"></asp:TextBox>
        </div>
        <asp:Button style="margin:5px 0 " ID="btnBorrar" CssClass="btn btn-danger" runat="server" Text="Borrar Usuario" OnClick="btnBorrar_Click" />
    </div>

</asp:Content>
