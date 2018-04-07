//
//  FilmeModel.swift
//  ATM_Consultoria
//
//  Created by Jean Fernandes on 07/04/2018.
//  Copyright © 2018 Jean Fernandes. All rights reserved.
//

import Foundation
import UIKit

class Filme{
    var titulo: String!
    var descricao: String!
    var img: UIImage!
    
    init(titulo: String, descricao: String) {
        self.titulo = titulo
        self.descricao = descricao
    }
}
