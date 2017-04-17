//
//  UltimaVista.swift
//  Segue
//
//  Created by Guillermo Garcia Romero on 16/04/17.
//  Copyright © 2017 Guillermo Garcia Romero. All rights reserved.
//

import UIKit

class UltimaVista: UIViewController {
    
    var texto = ""
    @IBOutlet weak var lbl_mensaje: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        lbl_mensaje.text=texto
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
