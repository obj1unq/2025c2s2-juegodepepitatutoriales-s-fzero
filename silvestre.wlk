
import pepita.*
import direcciones.*
object silvestre {
  var property position = game.at(3,0)

  method image() {
    return "silvestre.png"
  }
  
  method movimiento(direccion) {
    if (direccion == izquierda){
      position = game.at(pepita.position.x().max(3), 0)
    }
    else{
      direccion.mover(direccion)
    }
  }
  
  method movimientoA() {
    if (position.x() > 3){
      position = game.at(position.x()-1,0)
    }
  }

}