object tom {
	

	var energia = 50

	method comer(raton) {
		energia = energia + self.energiaQueDaComer(raton)
	}

	method energiaQueDaComer(raton) {
		return 12 + raton.peso()
	}
	
	method correr(distancia){
		energia = energia - self.energiaQueGastaEnCorrer(distancia)
	}
	
	method energiaQueGastaEnCorrer(distancia) {
		return distancia / 2
	}

	method velocidadMaxima()  {
		return 5 + energia / 10
	}
	
	method puedeComer(distancia) {
		return energia > self.energiaQueGastaEnCorrer(distancia)
	}

	method quiereComer (distancia, raton) {
		return self.puedeComer(distancia) and self.sirveComer(distancia, raton)
	}

	method sirveComer(distancia, raton) {
		return self.energiaQueDaComer(raton) > self.energiaQueGastaEnCorrer(distancia)
	}
	
}

object jerry {

	var edad = 2

	method peso() {
		return edad * 20
	}

	method cumplir() {
		edad = edad + 1
	}
}

object nibbles {

	method peso() {
		return 35
	}
}

