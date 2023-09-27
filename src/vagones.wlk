class Pasajero {
	const property banios
	const property largo
	const property ancho
	var property estaOrdenado = true
	var cargaMaxima
	var pesoMaximo
	var cantidadDePasajeros
	
	
	method  cantidadDePasajeros(){
		const pasajeros = if(ancho <= 3){8*largo}else{10*largo}
		return if(not estaOrdenado){0.max(cantidadDePasajeros = pasajeros -15)}else(cantidadDePasajeros = pasajeros) 
	}
	
	method cargaMaxima() {
		return if(banios){cargaMaxima = 300 }else{cargaMaxima=800}
	}
	
	method pesoMaximo() {
		pesoMaximo = 2000 + cantidadDePasajeros * 80 + self.cargaMaxima()
		return pesoMaximo
	}
	
	method esPopular() {
		return cantidadDePasajeros > 50	
	}
	
	method esCarguera() {
		return self.pesoMaximo() >= 1000
	}
	
	method hacerMantenimiento() {
		estaOrdenado = true
	}
	
}


class Carga {
	const property banios = false
	var property cargaMaxima
	var property maderasSueltas
	
	method cantidadDePasajeros() {return 0}
	
	
	method cargaMaxima() {
		return 0.max(cargaMaxima - (maderasSueltas * 400)) 
	}
	
	method pesoMaximo() {
		return 1500 + self.cargaMaxima()
	}
	
	method esPopular()= self.cantidadDePasajeros() > 50
	
	method esCarguera() {
		return self.pesoMaximo() >= 1000
	}
	
	method hacerMantenimiento() {
		0.max(maderasSueltas -= 2)
	}
	
}


class Dormitorio {
	const property cargaMaxima = 1200
	const property banios = true
	const property compartimientos
	var property camas
	
	method cantidadDePasajeros() {
		return compartimientos * camas
	}
	
	method pesoMaximo() {
		return 4000 + self.cantidadDePasajeros() + cargaMaxima
	}  
	
	method esPopular() {
		return self.cantidadDePasajeros() > 50	
	}
	
	method esCarguera() {
		return self.pesoMaximo() >= 1000
	}
	
	method hacerMantenimiento() {}
}
