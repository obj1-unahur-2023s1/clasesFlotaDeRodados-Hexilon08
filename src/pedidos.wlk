import dependencias.*
import rodados.*


class Pedido {
	var property distancia
	var property tiempoMax
	var property cantPasajeros
	const property coloresIncompatibles = #{}
	
	method agregarColoresIncompatibles(colores) {coloresIncompatibles.addAll(colores)}
	
	method velocidadRequerida() = distancia / tiempoMax
	method puedeSatisfacer(rodado) {return
		rodado.velMax() >= self.velocidadRequerida() +10 &&
		rodado.capacidad() >= cantPasajeros &&
		self.colorIncompatible(rodado.color())
	}
	method colorIncompatible(color) = return coloresIncompatibles.contains(color)
}
