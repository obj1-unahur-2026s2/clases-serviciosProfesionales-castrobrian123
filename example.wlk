

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

    method provinciasDondePuedeTrabajar() = ["Entre Ríos", "Santa Fe", "Corrientes"]
}


class ProfesionalLibre {
    var universidad
    var honorario
    var provincia

    method universidad() = universidad

    method honorario() = honorario

    method provinciasDondePuedeTrabajar() = provincia
}

// universidad

class Universidad {
    var provincia
    var honorario

    method provincia() = provincia

    method honorario() = honorario
}

const universidadDeSanMartin = 
    new Universidad(
        provincia = "Buenos Aires",
        honorario = 3500
    )

const universidadDeRosario =
    new Universidad(
        provincia = "Santa Fe",
        honorario = 2800
    )

const universidadDeCorrientes =
    new Universidad(
        provincia = "Corrientes",
        honorario = 4200
    )

const universidadDeHurlingham =
    new Universidad(
        provincia = "Buenos Aires",
        honorario = 8800
    )

// mis profesionales
