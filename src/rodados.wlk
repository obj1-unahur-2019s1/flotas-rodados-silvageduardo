
class Corsa {
	var property color
	
	method capacidad(){ return 4}
	method velocidadMaxima(){return 150}
	method peso(){return 1300}
	}
	
class Kwid {
	var property tanqueDeGas = false
	const tanqueAdicional = 150
	method capacidad(){ return if (tanqueDeGas){ 3 } else{ 4 } }
	method velocidadMaxima(){return if (tanqueDeGas){ 110 } else{ 120 } }
	method peso(){ return if (tanqueDeGas){ 1200+tanqueAdicional } else{ 1200 } }
	method color(){return "azul"}
}

object motorPulenta{
	method peso(){return 800}
	method velocidadMaxima(){return 130 }
}
object motorBataton{
	method peso(){return 500 }
	method velocidadMaxima(){return 80 }
}
object interiorComodo{
	method peso(){return 700}
	method capacidad(){return 5}
}
object interiorPopular{
	method capacidad(){return 12}
	method peso(){return 1000}
}
object traffic{
	var property interior =  interiorComodo
	var property motor = motorPulenta
	const trafficVacia = 4000
	
	method capacidad(){ return interior.capacidad()}
	method velocidadMaxima(){ return motor.velocidadMaxima()}
	method peso(){ 	return trafficVacia + motor.peso() + interior.peso()	}
	method color(){return "blanco"}
	
}

class AutosEspeciales{
	var property capacidad
	var property velocidadMaxima
	var property peso
	var property color
	}

