

object silvestre {
  var property position = game.at(3,0)

  method image() {
    return "silvestre.png"
  }
  
  method movimientoD() {
    if (position.x() < game.width()-1){
      position = game.at(position.x()+1,0)
    }
  }
  method movimientoA() {
    if (position.x() > 3){
      position = game.at(position.x()-1,0)
    }
  }

}