//
//  PublicacionesCell.swift
//  Servicios Web IOS Modulo3
//
//  Created by alumno on 3/23/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class PublicacionesCell: UITableViewCell {
    
    
    @IBOutlet weak var lblTitulo: UILabel!
    
    @IBOutlet weak var txtContenido: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
