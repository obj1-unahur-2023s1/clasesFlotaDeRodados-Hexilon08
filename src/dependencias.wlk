import rodados.*
import pedidos.*

class Dependencia {
	const flota = []
	var property empleados
	const pedidos = []
	
	method agregarAFlota(rodado) {flota.add(rodado)}
	method quitarDeFlota(rodado) {flota.remove(rodado)}
	method pesoTotalFlota() = flota.sum({r=>r.peso()})
	method estaBienEquipada() = flota.size() > 3 && flota.all({r=>r.velMax() > 1000})
	method capacidadTotalEnColor(color) {return
		flota.filter({r=>r.color() == color}).sum({r=>r.capacidad()})
	}
	method colorDelRodadoMasRapido() {return
		flota.max({r=>r.velMax()}).color()
	}
	method capacidadFlota() {return
		flota.sum({r=>r.capacidad()})
	}
	method capacidadFaltante() {return
		0.max(empleados - self.capacidadFlota())
	}
	method esGrande() { return
		empleados >=40 && flota.size() >= 5
	}
	method agregarPedido(pedido) {pedidos.add(pedido)}
	method quitarPedido(pedido) {pedidos.remove(pedido)}
	method totalPasajerosEnPedidos() = pedidos.sum({p=>p.cantPasajeros()})
	method pedidosInsatisfactorios() = pedidos.filter({p=>!self.hayAlgunRodadoQueSatisfacePedido(p)})
	method hayAlgunRodadoQueSatisfacePedido(pedido) = flota.any({r=>pedido.puedeSatisfacer(r)})
	method todosLosPedidosTienenColorIncompatible(color) = pedidos.all({p=>p.colorIncompatible(color)})
}
