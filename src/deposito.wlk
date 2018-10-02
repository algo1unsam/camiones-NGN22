import camion.*
import motoneta.*


object deposito
{
	//coleccion
	var cargaEnDeposito = []
	
	//recibe una collecion
	//o cosas unitarias a agregar a la coleccion concatenar
	
		
	//post agregala coleccion recibida a la actual
	method guardarEnDeposito(agregar)
	{
		// TODO creo que con el addAll ya estabas!
		cargaEnDeposito = [cargaEnDeposito,agregar].flatten()
	}
	
		
	//post pasa la carga al camion/motoneta luego vacia la carga del 
	//deposito
	method llenarTransporte(algo)
	{		
		cargaEnDeposito.forEach( { cosa => algo.cargar(cosa) } )
		
	}
	
			
	method sacarDelDeposito(unaCosa)
	{
		cargaEnDeposito.remove(unaCosa)
	}
	
	
	
}
