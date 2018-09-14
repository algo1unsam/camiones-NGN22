object knightRider 
{
	var property peso = 500
	const peligrosidad = 10	
	
	
	method peligrosidad()
	{
		return peligrosidad
	}
	
}


object bumblebee
{
	var property forma = auto
	var property peso = 800
	 
	
	method peligrosidad()
	{
		return forma.peligrosidad()
	}
	
	
}

object paqueteDeLadrillos
{	
	var property cantidadDeLadrillos = 0 //se le asigna por defecto 
	var peso = 2
	const peligrosidad = 2
	
	method peso()
	{
		return cantidadDeLadrillos * peso
	}
	method peligrosidad()
	{
		return peligrosidad
	}
	
	
}

object contenedorPortuario
{	
	var cosasDelContenedor = []
	var peso = 100
	
	
	method peso()
	{		
		return peso + cosasDelContenedor.sum { unaCosa => unaCosa.peso() }
	}
	
	method peligrosidad()
	{
		var peligrosidad = 0
		if(cosasDelContenedor != null)
		{
			peligrosidad = cosasDelContenedor.max({unaCosa => unaCosa.peligrosidad()})
		}
		
		return peligrosidad
	}
}

object embalajeDeSeguridad
{
	var property cosa = null
	var peso = 0
	var peligrosidad = 0
	
	method peso()
	{	
		
		if(cosa != null)
		{
			peso = cosa.peso()
		}
		return peso
	}
	
	method peligrosidad()
	{
		if(cosa != null)
		{
			peligrosidad = ( cosa.peligrosidad() / 2 )
		}
		return peligrosidad
	}
	
	
	
}


object auto
{
	method peligrosidad ()= {15}
}
object robot
{
	method peligrosidad ()= {30}
}