//
//  PublicacionesWebservice.swift
//  Servicios Web IOS Modulo3
//
//  Created by Admin on 28/03/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit
import Alamofire

class PublicacionesWebservice: NSObject {
    
    static func ListarTodos() -> Array<Publicaciones> {
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
        
        Alamofire.request(url!, method:.get, parameters:nil, encoding: URLEncoding.httpBody).responseJSON { (response) in
            
            print(response.result.value)
            
        }
        return Array()
        
    }

}
