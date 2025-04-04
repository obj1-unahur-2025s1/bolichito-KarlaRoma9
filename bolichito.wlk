import personas.*
import objetos.*

object bolichito {
  var  objetoEnVidriera = pelota
  var objetoEnMostrador = remera

  method objetoEnMostrador(objetoAPoner) {
    objetoEnMostrador = objetoAponer
  }
  method objetoEnVidriera(objetoAPoner) {
    objetoEnVidriera = objetoAPoner
  }
  method esBrillante() {
    return objetoEnMostrador.material().brilla()
    && objetoEnVidriera.material().brilla()
  } 
  method esMonocromatico(){
    return objetoEnMostrador.color() ==
    objetoEnVidriera.color()
  }
  method estaEquilibrado(){
    return objetoEnMostrador.peso() > objetoEnVidriera
  }
  method tieneAlgoDeColor(unColor){
    return objetoEnMostrador.color() ==
    unColor || objetoEnVidriera.color() ==
    unColor
  }
  method puedeMejorar(){
    return not self.estaEquilibrado() ||
    self.esMonocromatico()
  }
  method puedeOfrecerAlgoA(unaPersona){
    return unaPersona.leGusta(objetoEnMostrador) ||
    unaPersona.leGusta(objetoEnVidriera)
  }
  method intercambiarObjetos(){
    const aux = objetoEnMostrador
    objetoEnMostrador = objetoEnVidriera
    objetoEnVidriera = aux
  }
}