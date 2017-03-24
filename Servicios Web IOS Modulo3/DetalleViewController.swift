//
//  DetalleViewController.swift
//  Servicios Web IOS Modulo3
//
//  Created by alumno on 3/23/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class DetalleViewController: UIViewController {
    
    var publicacion: Publicaciones!
    
    
    @IBOutlet weak var txtContenido: UITextView!
    @IBOutlet weak var lblTitulo: UINavigationItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblTitulo.title = publicacion.titulo
        txtContenido.text = publicacion.contenido
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
