package practica13

class Evento {
    String nombre
    Date fechaInicio
    Date fechaFin
    static hasMany = [usuarios:Usuario]
    static constraints = {
    }
}
