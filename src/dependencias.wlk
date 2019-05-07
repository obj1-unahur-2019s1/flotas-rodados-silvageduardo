import rodados.*

class Dependencia{
	var property empleados = 0
	var flota = []
	var flotaNueva = []
	method agregarAFlota(rodado){	flota.add(rodado)	}
	method quitarDeFlota(rodado){	flota.remove(rodado)	}
	method pesoTotalFlota(){ 
		return flota.sum({f =>
			f.peso()
	}) }
	method estaBienEquipada(){
		return flota.size()>= 3 and flota.all({ f => f.velocidadMaxima() >= 100 }) 
	}
	method capacidadTotalEnColor(color){
		
		flotaNueva = flota.filter({f => f.color(color)})
		return flotaNueva.sum({f => f.capacidad()})
	}
	method colorDelRodadoMasRapido(){
		flotaNueva = flota.max({f => f.velocidadMaxima()})
		return flotaNueva.map({f => f.color()})
	}
	method capacidadFaltante(){
		return empleados - flota.sum({f=> f.capacidad()})
	}
	method esGrande(){
		return (empleados >= 40 and flota.size() >= 5)
	}
}
