import silvestre.*

object pepita {
	var energia = 100
	var property position = game.center()
	var property image = "pepita.png"

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}
	method esAtrapada() {
	  if (self.position() == silvestre.position()){
		self.image("pepita-gris.png")
	  } 
	}
	method reiniciar() {
	  self.position(game.center())
	  self.image("pepita.png")
	}
}

