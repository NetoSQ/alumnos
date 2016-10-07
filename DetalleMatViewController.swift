//
//  DetalleMatViewController.swift
//  table
//
//  Created by Maestro on 29/09/16.
//  Copyright © 2016 Maestro. All rights reserved.
//

import Foundation
import UIKit

class DetalleController: UIViewController{
    
    var alumno: Alumno?
    var materia : Materia?
    
    
    @IBOutlet weak var lblMateria: UILabel!
    @IBOutlet weak var lblAlumno: UILabel!
    @IBOutlet weak var lblCal1: UILabel!
    @IBOutlet weak var lblCal2: UILabel!
    @IBOutlet weak var lblCal3: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lblMateria.text = materia!.nombre
        lblAlumno.text = "\(alumno!.nombre) \(alumno!.apellidos)"
        
        if let cal1 = materia!.calificacionPrimerParcial{
            lblCal1.text = String(cal1)
        }
    
        if let cal2 = materia!.calificacionSegundoParcial{
            lblCal2.text = String(cal2)
        }
        
        if let cal3 = materia!.calificacionTercerParcial{
            lblCal3.text = String(cal3)
        }
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}