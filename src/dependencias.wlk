import rodados.*
import pedidos.*

class Dependencia{
	var property empleados = 0
	var flota = []
	var pedidos = []
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
	method agregarPedido(pedido){	pedidos.add(pedido)	}
	method quitarPedido(pedido){	pedidos.remove(pedido)	}
	method totalPasajeros(){	return pedidos.sum({p=> p.cantidadPasajeros()})	}
	method pedidoNoSatisfecho() {	return self.filtrarPedidos()	}
	method filtrarPedidos(){return	pedidos.filter({	p => p.satisfacePedido(flota)	})}//dependencia satisface a 1 pedido y despues lo niego
	method colorIncompatible(color){	return self.filtrarColor(color)}
	method filtrarColor(color){ 
		pedidos.coloresIncompatibles().add(color)
		return not pedidos.all({p => p.satisfaceColor(color)})
		}
	method relajar(){ pedidos.foreach({	p=>	p.relajar()})}
	
}
