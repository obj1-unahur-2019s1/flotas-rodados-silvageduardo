import rodados.*

class Dependencia{
	var property empleados = 0
	var flota = []
//	var flotaNueva = [] mal 
	method agregarAFlota(rodado){	flota.add(rodado)	}
	method quitarDeFlota(rodado){	flota.remove(rodado)	}
	method pesoTotalFlota(){ return flota.sum({f => f.peso() }) }
	method estaBienEquipada(){	return flota.size()>= 3 and flota.all({ f => f.velocidadMaxima() >= 100 }) 	}
	method capacidadTotalEnColor(color){		
		var flotaNueva = flota.filter({f => f.color()== color})
		return flotaNueva.sum({fn => fn.capacidad()})
	}
	method colorDelRodadoMasRapido(){		
		var flotaNueva = flota.max({f => f.velocidadMaxima()})
		return flotaNueva.color()
	}
	method esGrande(){	return (empleados >= 40 and flota.size() >= 5)	}
	method capacidadFaltante(){	return empleados - flota.sum({f=> f.capacidad()})	}
	
//	method capacidadTotal(){ return flota.sum({f=> f.capacidad()}) } si se hace mucho una cuenta es mejor generar un metodo
}
