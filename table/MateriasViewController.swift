//
//  ViewController.swift
//  table
//
//  Created by Maestro on 22/09/16.
//  Copyright © 2016 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var alumno : Alumno?
    
    @IBOutlet weak var tvMaterias: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title="Mi tabla"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // DataSource
    
    func numberOfSectionsInTableView(tableView: UITableView)-> Int{
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumno!.materias.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let celda = tvMaterias.dequeueReusableCellWithIdentifier("celdaMateria")
        celda?.textLabel?.text = alumno!.materias[indexPath.row].nombre
        
        return celda!
    }
    
    // Delegate
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "goToDetalle"{
            let materiasController = segue.destinationViewController as! DetalleController
            materiasController.alumno = alumno
            materiasController.materia = alumno?.materias[tvMaterias.indexPathForSelectedRow!.row]
        }
        
    }
    
}

