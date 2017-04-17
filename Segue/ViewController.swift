//
//  ViewController.swift
//  Segue
//
//  Created by Guillermo Garcia Romero on 12/04/17.
//  Copyright © 2017 Guillermo Garcia Romero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_fld_mensaje: UITextField!
    @IBAction func clk_btn_empezar(_ sender: UIButton) {
        
        performSegue(withIdentifier: "primerSegue", sender:self )
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "primerSegue" {
            let texto = txt_fld_mensaje.text
            
            let controller = segue.destination as! SegundaVista
            controller.texto=texto!
        }
    }
}

