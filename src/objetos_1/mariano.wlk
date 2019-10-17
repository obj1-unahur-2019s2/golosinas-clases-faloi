import golosinas.*

object mariano {
	const golosinas = []
	
	method comprar(golosina) {
		golosinas.add(golosina) 
	}
	
	method desechar(golosina) {
		golosinas.remove(golosina)
	}
	
	method golosinas() { 
		return golosinas
	}
	
	method probarGolosinas() { 
		golosinas.forEach { g => g.mordisco() }
	}
	
	method hayGolosinaSinTACC() {
		return golosinas.any { g => g.libreGluten() }
	}
	
	method preciosCuidados() {
		return golosinas.all { g => g.precio() <= 10 }
	}
	
	method golosinaDeSabor(sabor) {
		return golosinas.find { g => g.gusto() == sabor }
	}
	
	method golosinasDeSabor(sabor) {
		return golosinas.filter { g => g.gusto() == sabor }
	}
	
	method sabores() {
		return golosinas.map { g => g.gusto() }.asSet()
	}
	
	method golosinaMasCara() {
		return golosinas.max { g => g.precio() }
		
//		Esto hace OTRA cosa, que está mal para lo que pide el enunciado:
//		return golosinas.map { g => g.precio() }.max()
	}
	
	method pesoGolosinas() {
		return golosinas.sum { g => g.peso() }
		
//		return golosinas.map { g => g.peso() }.sum()
	}
	
	method baniar(unaGolosina) {
		return new GolosinaBaniada(golosinaInterior = unaGolosina)
	}
}










