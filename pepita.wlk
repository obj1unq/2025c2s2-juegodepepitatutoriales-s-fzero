import silvestre.*
import nido.*


object pepita {
	var energia = 100
	var property position = game.center()
	var property image = "pepita.png"
	const perseguidor = silvestre
	const objetivo = nido
	//3er metodo
	// method image() {
	//   return "pepita-" + self().estado() + ".png"
	// }
	method estado() {
	  if (position == objetivo.position()){
		return ganadora
	  }
	  else if(position == perseguidor.position()) {
		return perdedora
	  }
	  else{ 
		return libre
	  }
	}
	// 1er metodo para el nido 
	method image() {
	  if (position == objetivo.position()){
		return "pepita-Grande.png"
	  }
	  else{
		return "pepita.png"
	  }
	}
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
		self.image("pepita-gris.png")
	}
	method reiniciar() {
	  self.position(game.center())
	  self.image("pepita.png")
	}
	method mover(direccion) {
	  position = direccion.siguiente()
	}
	//2do metodo nido.
	method verificarVerificar() {
	  if (position == objetivo.position()){
		return "pepita-grande.png"
	  }
	  else{
		return "pepita.png"
	  }
	}
}

object perdedora {
  method nombre() {
	return "gris"
  }
}

object ganadora {
  method nombre() {
	return "grande"
  }
}

object libre {
  method nombre() {
	return "libre"
  }
}