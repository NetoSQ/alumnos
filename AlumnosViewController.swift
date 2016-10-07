//
//  AlumnosController.swift
//  table
//
//  Created by Maestro on 23/09/16.
//  Copyright © 2016 Maestro. All rights reserved.
//

import Foundation
import UIKit

class AlumnoController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tvAlumnos: UITableView!
    
    var alumnos : [Alumno] = []  
    
    override func viewDidLoad() {
        self.title = "Alumnos"
        
        
        alumnos.append(Alumno(nombre: "Juan", apellidos: "Perez", matricula: "139292", carrera: "IPM", foto: "F1"))
        alumnos.append(Alumno(nombre: "Pedro", apellidos: "Gaona", matricula: "137459", carrera: "IM", foto: "F2"))
        alumnos.append(Alumno(nombre: "Lucia", apellidos: "Chapa", matricula: "139685", carrera: "IIC", foto: "F3"))
        alumnos.append(Alumno(nombre: "Maria", apellidos: "Zavala", matricula: "115546", carrera: "IDI", foto: "F4"))
        
        alumnos[0].materias.append(Materia(nombre: "Animacion I"))
        alumnos[0].materias[0].calificacionPrimerParcial = 8
        alumnos[0].materias[0].calificacionSegundoParcial = 9
        alumnos[0].materias[0].calificacionTercerParcial = 10
        alumnos[0].materias.append(Materia(nombre: "Dispositivos Moviles"))
        alumnos[0].materias[1].calificacionPrimerParcial = 10
        alumnos[0].materias[1].calificacionSegundoParcial = 9
        alumnos[0].materias[1].calificacionTercerParcial = 10
        alumnos[0].materias.append(Materia(nombre: "Tratamiento de Imagen"))
        alumnos[0].materias[2].calificacionPrimerParcial = 9
        alumnos[0].materias[2].calificacionSegundoParcial = 9
        alumnos[0].materias[2].calificacionTercerParcial = 9
        alumnos[0].materias.append(Materia(nombre: "Redes Computacionales"))
        alumnos[0].materias[3].calificacionPrimerParcial = 10
        alumnos[0].materias[3].calificacionSegundoParcial = 10
        alumnos[0].materias[3].calificacionTercerParcial = 10
        

    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCellWithIdentifier("celdaAlumno") as! CeldaAlumnoController
        celda.lblNombreAlumno.text = alumnos[indexPath.row].nombre + " " + alumnos[indexPath.row].apellidos
        celda.lblMatricula.text = alumnos[indexPath.row].matricula
        celda.lblCarrera.text = alumnos[indexPath.row].carrera
        celda.imgFoto.image = alumnos[indexPath.row].imgFoto
        
        
        return celda
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "goToMaterias"{
            let materiasController = segue.destinationViewController as! ViewController
            materiasController.alumno = alumnos[tvAlumnos.indexPathForSelectedRow!.row]
        }
        
    }
    
}
