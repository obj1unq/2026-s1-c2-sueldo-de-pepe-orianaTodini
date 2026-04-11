
object cadete {
  method neto() { 
	return 20000 
  }
}
object gerente {
	method neto() { 
		return 15000 } 
}

object vendedor { 
   const sueldoBase= 16000
  method sueldoNeto() {
    return 160000
  }
  method activarAumentoPorMuchasVentas() {
    return sueldoBase * 1.25 
  }
  method desactivarAumentoPorMuchasVentas () {
    return sueldoBase
  }

}

object  medioTiempo  {
  var categoriaBase = cadete
  method categoriaBase(_categoria ) {
    categoriaBase = _categoria
  }
  method neto(){     
    return categoriaBase.neto() / 2
  }
}
