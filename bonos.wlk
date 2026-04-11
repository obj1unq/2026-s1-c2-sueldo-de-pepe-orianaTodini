// bono por resultados por porcentaje
// bono por resultados por porcentaje
object bonoPorcentaje {
    method monto(empleado) { return empleado.sueldoNeto() * 10 / 100 }
}




// bono por resultados de monto fijo
object bonoMontoFijo {
    method monto(empleado) {
      return  800
    }
}
// agregar bonos por presentismo  
object bonoPresentismoNormal {
    method monto(empleado) {
        return if( empleado.inasistencias() == 0) {
              2000
        }
        else if ( empleado.inasistencias() ==1 ){
              1000
        }
        else{
              0
        }
    }
}
object bonoPresentismoAjuste {
  method monto(empleado) {
    return if (empleado.inasistencias(empleado) == 0) {
         100
    }
    else {
        0
    }
  }
    method cantidadDeFaltas(empleado){
        return empleado.inasistencias()> 0
    }
    method inasistencias(empleado){
        return empleado.inasistencias()
    }
  }
object bonoPresentismoDemagogico {
  method monto(empleado) {
    return if (empleado.sueldoNeto()< 18000){
         500
    }
    else {
        300
    }
  }
}
// agregar bonos ajuste y demagogico




/*
 * Bono nulo: sirve para resultados y para presentismo, cuando el importe es 0
 * (o "nada")
 */
object bonoNulo {
    method monto(empleado) { return 0 }
}
