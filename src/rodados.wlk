
class Corsa {
	var property color

	method capacidad() = 4
	method velMax() = 150 
	method peso() = 1300 
}

class Kwid {
	var property tieneAdicional = false
	
	method capacidad() = if(tieneAdicional) 3 else 4
	method velMax() = if(tieneAdicional) 120 else 110
	method peso() = 1200 + if(tieneAdicional) 150 else 0
	method color() = "azul"
}

class AutoEspecial {
	var property color
	var property capacidad
	var property velMax
	var property peso
}

object trafic {
	
	var property interior
	var property motor
	
	method color() = "blanco"
	method capacidad() = interior.capacidad()
	method peso() = 4000 + interior.peso() + motor.peso()
	method velMax() = motor.velMax()
}

object comodo{
	method capacidad() = 5
	method peso() = 700
}

object popular {
	method capacidad() = 12
	method peso() = 1000
}

object pulenta{
	method velMax() = 130
	method peso() = 800
}

object bataton {
	method velMax() = 80
	method peso() = 500
}