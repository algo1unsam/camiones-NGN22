import deposito.*


object camion
{
	var cargaEnCamion = null
	var property cargaMaxima = 900 // x defecto se le asigna 500 de carga maxima
		
	//parte A
	
	//pre objeto se considera carga valida siempre las cargas vienen del deposito
	//post agrega a la carga el objeto pasado solo
	// si este no supera la carga maxima . si la supera la devuelve a deposito
	method cargar( unaCosa )
	{
		if(self.sePuedeCargar(unaCosa))
		{
			cargaEnCamion.add( unaCosa )
			deposito.sacarDelDeposito(unaCosa)			
		}
		else
		{
			deposito.guardarEnDeposito(unaCosa)
		}
	}
	
	
	//pre 
	// post saca de la carga el objecto pasado
	method descargar( unaCosa )
	{
		cargaEnCamion.remove( unaCosa )
	}
	
	//post true si se encontro 
	method consultaCarga( unaCosa )
	{
		return cargaEnCamion.contains( unaCosa )
	}
	
	//parte 3
	
	//post retorna el peso de la carga
	method consultaPeso()
	{
		return cargaEnCamion.sum { unaCosa => unaCosa.peso() }
	}
	
	method cargaDisponible()
	{
		return cargaMaxima - self.consultaPeso()
	}
	
	
	//true si se puede agregar
	method sePuedeCargar(unaCosa)
	{
		return unaCosa.peso() < self.cargaDisponible()
	}
	
	
	method laCargaMasPeligrosa()
	{
		return cargaEnCamion.max({cosa => cosa.peligrosidad()})
	}
	
	
		
	
}
