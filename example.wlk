
class Universidad {
    var provincia
    var honorario

    method provincia() = provincia

    method honorario() = honorario
}

class ProfesionalVinculado {
    var universidad

    method universidad() = universidad

    method honorario() = universidad.honorario()

    method provinciasDondePuedeTrabajar() = [universidad.provincia()]
}

class ProfesionalAsociado {
    var universidad

    method universidad() = universidad

    method honorario() = 3000

    var provinciasHabilitadas = ["Entre Ríos", "Santa Fe", "Corrientes"]

    method provinciasDondePuedeTrabajar() = provinciasHabilitadas
}


class ProfesionalLibre {

    var universidad

    method universidad() = universidad

    var honorario

    method honorario() = honorario

    var provinciasDondePuedeTrabajar

    method provinciasDondePuedeTrabajar() = provinciasDondePuedeTrabajar

}

class EmpresaDeServicio {

    var profesionales

    method profesionales() = profesionales

    var honorarioDeReferencia

    method honorarioDeReferencia() = honorarioDeReferencia

    method cantidadDeProfesionalesQueEstudiaronEn(unaUniversidad){
        return profesionales.count({ unProfesional => unProfesional.universidad() == unaUniversidad })
    }

    method obtenerProfesionalesCaros(){
        return profesionales.filter({ unProfesional => unProfesional.honorario() > self.honorarioDeReferencia() }).asSet() //pongo asSet() por que dice conjunto
    }

    method obtenerUniversidadesFormadoras(){
        return profesionales.map({ unProfesional => unProfesional.universidad() }).asSet() //pongo asSet() por que dice conjunto
    }

    method obtenerProfesionalConHonorarioMasBajo(){
        return profesionales.min({ unProfesional => unProfesional.honorario() })
    }

    method esGenteAcotada(){ //el nombre del metodo del enunciado es muy poco claro 
        return profesionales.all({ unProfesional => unProfesional.provincia().size() <= 3 })
    }

}

// universidad





// mis profesionales
