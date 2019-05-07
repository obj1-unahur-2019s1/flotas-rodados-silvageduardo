
class Corsa {
	var property color
	
	method capacidad(){ return 4}
	method velocidadMaxima(){return 150}
	method peso(){return 1300}
	}
	
class Renault {
	var property tanqueDeGas = false
	const tanqueAdicional = 150
	method capacidad(){ return if (tanqueDeGas){ 3 } else{ 4 } }
	method velocidadMaxima(){return if (tanqueDeGas){ 110 } else{ 120 } }
	method peso(){ return if (tanqueDeGas){ 1200+tanqueAdicional } else{ 1200 } }
	method color(){return "azul"}
}

object traffic{
	var property interior = "comodo" 
	var property motor = "pulenta"
	const trafficVacia = 4000
	const motorPulenta = 800
	const interiorComodo = 700
	const interiorPopular = 1000
	const motorBataton = 500
	method capacidad(){ return if (interior == "comodo"){ 5 }else{ 12 }}
	method velocidadMaxima(){ return if (motor == "pulenta"){ 130 }else{ 80 } }
	method peso(){ 
		return if( interior and motor ){
			trafficVacia + interiorComodo + motorPulenta
		}else if ( not interior and motor){
			trafficVacia + interiorPopular + motorPulenta
		}else if(  interior and not motor){
			trafficVacia + interiorComodo + motorBataton
		}else{
			trafficVacia + interiorPopular + motorBataton
		}
	}
	method color(){return "blanco"}
	
}

class AutosEspeciales{
	var property capacidad
	var property velocidadMaxima
	var property peso
	var property color
	}

