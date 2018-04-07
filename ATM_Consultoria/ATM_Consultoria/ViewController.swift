//
//  ViewController.swift
//  ATM_Consultoria
//
//  Created by Jean Fernandes on 01/04/2018.
//  Copyright © 2018 Jean Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var filmes : [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var filme: Filme
        filme = Filme(titulo: "teste", descricao: "descricao")
        filmes.append(filme)
        
        
        filme = Filme(titulo: "qwtfqweste", descricao: "dfqwfwqescricao")
        filmes.append(filme)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

