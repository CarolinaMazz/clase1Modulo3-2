//
//  ViewController.swift
//  Servicios Web IOS Modulo3
//
//  Created by alumno on 3/23/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit
import MBProgressHUD

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var publicaciones = Array<Publicaciones>()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func obtenerPublicaciones(){
        
        publicaciones.removeAll()
        
        let hud = MBProgressHUD(view: self.view)
        
        hud.show(animated: true)
        //hud.label.text("cargando")
        
        PublicacionesWebservice.ListarTodos{ (resultado) in
            self.publicaciones = resultado
            self.tableView.reloadData()
        }
        
        /*for i in 1...8 {
            
            let publicacion = Publicaciones()
            
            publicacion.titulo = "Carro \(i)"
            publicacion.contenido = "Contenido \(i)"
            publicaciones.append(publicacion)
            
        }*/
        hud.hide(animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return publicaciones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! PublicacionesCell
        
        let indice = indexPath.row
        let publicacion = publicaciones[indice]
        
        cell.lblTitulo.text = publicacion.titulo
        cell.txtContenido.text = publicacion.contenido
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let publicacion = publicaciones[indexPath.row]
        self.performSegue(withIdentifier: "detalle", sender: publicacion)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalle"{
            let detalleViewControler = segue.destination as! DetalleViewController
            detalleViewControler.publicacion = sender as! Publicaciones
        }
    }
    
    
    @IBAction func btnRefreshTouch(_ sender: UIBarButtonItem) {
        self.obtenerPublicaciones()
        tableView.reloadData()
    }


}

