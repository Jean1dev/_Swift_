//
//  ViewController.swift
//  First app with swift
//
//  Created by Jean Fernandes on 23/03/2018.
//  Copyright © 2018 Jean Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Legenda: UILabel!
    
    @IBOutlet weak var label1: UITextField!
    
    @IBAction func click(_ sender: Any) {
        Legenda.text = label1.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Teste")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

