import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	var compañero = roque 
  method compañero(_compañero){
	compañero = _compañero
  }
	method cantidadDeFaltas() {
		 return cantidadDeFaltas 
}
	method categoria(_categoria) {
	  categoria = _categoria
	  cantidadDeFaltas = 0
	}
	method bonoPresentismo(_bonoPresentismo) {
	  bonoPresentismo = _bonoPresentismo
	}
	method bonoResultado(_bonoResultado) {
	  bonoResultado = _bonoResultado
	}
	method inasistencias() {
	  return cantidadDeFaltas
	}
	method faltas(cantidad) {
	  cantidadDeFaltas = cantidad 
	}


	// faltan los métodos para poder cambiar la categoria, el bono por presentismo,
	// el bono por resultados y la cantidad de faltas de Pepe. 
	
	method sueldoNeto() { return categoria.neto() }
	method sueldo() {
		return self.sueldoNeto() + bonoPresentismo.monto(self) + bonoResultado.monto(self)
			/* + el bono por presentismo */
			/* + el bono por resultado */
		
		/* notar que todos los bonos entienden el mensaje monto(empleado)
		 * en este caso ¿quién es el empleado?
		 */ 
	}
	
}

object sofia {
	 var  categoria = cadete 
	 var bonoResultado = bonoNulo 
	 var compañero = roque 
  method compañero(_compañero){
	compañero = _compañero
  }
  method categoria(_categoria ) {
	categoria = _categoria
  }
  method bonoResultado(_bonoResultado ) {
	bonoResultado = _bonoResultado
  }
  method sueldoNeto() {
	return categoria.neto() * 1.3 
  }
  method sueldo () {
	return self.sueldoNeto() + bonoResultado.monto(self)
  }
}

object roque {
	var bonoResultado = bonoNulo 
	var compañero = ernesto
	method compañero(_compañero){
	compañero = _compañero
  }
	method bonoResultado(_bonoResultado) {
	  bonoResultado = _bonoResultado
	}
    method sueldo(){
	return self.sueldoNeto() + bonoResultado.monto(self) + 900
   }
    method sueldoNeto() {
	return 28000
  }
}

object ernesto  {
  var compañero = roque 
  var bonoPresentismo = bonoNulo 
  var cantidadDeFaltas = 0
  method compañero(_compañero){
	compañero = _compañero
  }

  method sueldoNeto() {
	return compañero.sueldoNeto() 
  }
  method bonoPresentismo(_bonoPresentismo) {
	  bonoPresentismo = _bonoPresentismo
	}
	method inasistencias() {
	  return cantidadDeFaltas
	}
	method faltas(cantidad) {
	  cantidadDeFaltas = cantidad 
	}
  method sueldo() {
	return self.sueldoNeto() + bonoPresentismo.monto(self)
  }
}

