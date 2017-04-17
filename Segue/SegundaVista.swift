//
//  SegundaVista.swift
//  Segue
//
//  Created by Guillermo Garcia Romero on 16/04/17.
//  Copyright © 2017 Guillermo Garcia Romero. All rights reserved.
//

import UIKit

class SegundaVista: UIViewController {

    @IBOutlet weak var lbl_mensaje: UILabel!
    var texto = ""
    
    
    
    @IBAction func clk_btn_next(_ sender: UIButton) {
        performSegue(withIdentifier: "segundoSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl_mensaje.text=texto

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segundoSegue" {
            let controller = segue.destination as! TerceraVista
            controller.texto=texto
        }
        
    }

}
