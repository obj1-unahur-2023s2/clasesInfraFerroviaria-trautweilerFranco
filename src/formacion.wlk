import vagones.*

class Formacion {	
	const formacion = []
	
	method agregarUnVagon(unVagon) {
		formacion.add(unVagon)
	}
	
	method pasajerosFormacion(){
		return formacion.sum({p=> p.cantidadDePasajeros()})
	}  
	
	method vagonesPopulares(){
		return formacion.count({p => p.esPopular()})
	}
	
	method esCarguera() {
		return formacion.all({c => c.esCarguera()})
	} 
	
	method dispercionDePeso() {
		const pesoMaximo = formacion.max({f => f.pesoMaximo()})
		const pesoMinimo = formacion.min({f => f.pesoMaximo()})
		return pesoMaximo.pesoMaximo() - pesoMinimo.pesoMaximo()
	}
	
	method cantidadDeBanios() {
		formacion.count({v => v.banios()})
	}
	
	method hacerMantenimiento() {
		formacion.forEach({v => v.mantenimiento()})
	}
	
	method estaEquilibrada() {
		const tienenPasajeros = formacion.filter({f => f.cantidadDePasajeros() > 0})
		const maxPasajeros = tienenPasajeros.max({f => f.cantidadDePasajeros()})
		const minPasajeros = tienenPasajeros.min({f => f.cantidadDePasajeros()})
		return maxPasajeros.cantidadDePasajeros() - minPasajeros.cantidadDePasajeros() < 20 
	}
	
	method estaOrganizada() {
		return not(1..formacion.size()-1).any({idx => not formacion.get(idx-1).esDePasajeros() and formacion.get(idx).esDePasajeros() 
	}
}
