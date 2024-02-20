<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/General.Master" AutoEventWireup="true" CodeBehind="VerUsuarios.aspx.cs" Inherits="Front.Vistas.VerUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-success table-striped">
        <thead>
        <tr>
            <td> ID</td>
            <td>Usuario Nombre </td>
            <td> Correo</td>
        </tr>
        </thead>  
        <tbody id="tbl_body">
        </tbody>  
    </table>


    <script src="../Resources/JS/VerUsuarios.js"></script>

</asp:Content>
