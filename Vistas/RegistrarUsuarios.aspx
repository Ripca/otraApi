<%@ Page Async="true" Title="" Language="C#" MasterPageFile="~/Vistas/General.Master" AutoEventWireup="true" CodeBehind="RegistrarUsuarios.aspx.cs" Inherits="Front.Vistas.RegistrarUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding:30px">

    <div >
        <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="txtNombre" runat="server"></asp:TextBox>
    </div>

    <div >
        <asp:Label ID="lblCorreo" runat="server"  Text="Correo"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="txtCorreo" runat="server"></asp:TextBox>
    </div>
    <asp:Button style="margin:5px 0" ID="btnRegistrar" runat="server" Text="HOLAAAAAA" CssClass="btn btn-success" OnClick="btnRegistrar_Click"/>
    </div>


</asp:Content>
