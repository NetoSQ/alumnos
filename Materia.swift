//
//  File.swift
//  table
//
//  Created by Maestro on 23/09/16.
//  Copyright © 2016 Maestro. All rights reserved.
//

import Foundation

class Materia {
    
    var nombre : String
    var descripcion : String?
    
    var calificacionPrimerParcial : Double? // el signo de interrogacion dice que es opcional que tenga valor
    var calificacionSegundoParcial : Double?
    var calificacionTercerParcial : Double?
    var calificacionFinal : Double?
    
    init(){ // este es un constructor y su funcion es inicializar los valores de una clase
        
        nombre = "Nueva materia"
    }
    
    init (nombre : String){
        self.nombre = nombre
    }
    
    init (nombre : String, descripcion : String){
        self.nombre = nombre
        self.descripcion = descripcion
    }
}

