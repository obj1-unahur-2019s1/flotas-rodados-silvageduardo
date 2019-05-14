import rodados.*
import dependencias.*


class Viaje{
	var property distanciaARecorrer = 0
	var property tiempoMaximo = 0
	var property cantidadPasajeros = 0
	var property coloresIncompatibles = #{}
	method velocidadRequeridia(){ return distanciaARecorrer / tiempoMaximo	}
	method satisfaceVelocidad(auto){ return auto.velocidadMaxima()> self.velocidadRequeridia()+10}
	method satisfaceCapacidad(auto){return	auto.capacidad() >= cantidadPasajeros}
	method satisfaceColor(auto){ return not coloresIncompatibles.contains(auto.color()) }
	method satisfacePedido(auto){return self.satisfaceVelocidad(auto)and 
								self.satisfaceCapacidad(auto)and   self.satisfaceColor(auto)
	}
	method acelerar(){ tiempoMaximo = (tiempoMaximo - 1).max(0.1) }
	method relajar(){ tiempoMaximo += 1	}
	
	}
	

