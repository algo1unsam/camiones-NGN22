import deposito.*


object motoneta 
{
	var cargaDeLaMotoneta = null
	var cargaMaxima = 100
	
	
	//pre objeto se considera carga valida siempre las cargas vienen del deposito
	//post agrega a la carga el objeto pasado solo
	// si este no supera la carga maxima . si la supera la devuelve a deposito
	method cargar( unaCosa )
	{
		if( self.sePuedeCargar(unaCosa) )
		{
			cargaDeLaMotoneta.add( unaCosa )
			
			deposito.sacarDelDeposito( unaCosa )			
		}
		
	}
	
	method sePuedeCargar(unaCosa)
	{
		return self.esPeligrosa(unaCosa) && self.superaElPesoMaximo(unaCosa)
	}
	
	method esPeligrosa(unaCosa)
	{
		return unaCosa.peligrosidad() < 5	
	}
	//post retorna el peso de la carga
	method consultaPeso()
	{
		return cargaDeLaMotoneta.sum { unaCosa => unaCosa.peso() }
	}
	
	method cargaDisponible()
	{
		return cargaMaxima - self.consultaPeso()
	}
	
	method superaElPesoMaximo(unaCosa)
	{
		return unaCosa.peso() < self.cargaDisponible()
	}
	
	
	
	
	
}
