package practica13

class Usuario {

    String cedula
    String nombre
    String apellido
    String email
    Date fechaNacimiento
    static belongsTo = Evento
    static constraints = {
    }
}
