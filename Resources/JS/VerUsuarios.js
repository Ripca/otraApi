$(document).ready(function () {
    function verUsuarios() {
        $.ajax({
            url: 'https://localhost:44390/api/usuario',
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                $('#tbl_body').empty();
                $.each(data, function (index,usuario) {
                    $('#tbl_body').append(
                        '<tr>' +
                        '<td>' + usuario.IdUsuario + '</td>' +
                        '<td>' + usuario.NombreUsuario + '</td>' +
                        '<td>' + usuario.Correo + '</td>' +
                        '</tr>'
                    );
                });
            },
            error: function () {
                alert("algo malo");
            }
        });
    }
    verUsuarios();
});