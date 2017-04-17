//
//  TerceraVista.swift
//  Segue
//
//  Created by Guillermo Garcia Romero on 16/04/17.
//  Copyright © 2017 Guillermo Garcia Romero. All rights reserved.
//

import UIKit

class TerceraVista: UIViewController {
    
    var texto = ""
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl_fld: UILabel!
    

    @IBAction func clk_btn_siguiente(_ sender: UIButton) {
        performSegue(withIdentifier: "tercerSegue", sender: self)
        
    }
    
    @IBAction func clk_cambiar_color(_ sender: UIButton) {
        //img.backgroundColor = UIColor(colorLiteralRed: Float(arc4random_uniform(255)/255), green: Float(arc4random_uniform(255)/255), blue: Float(arc4random_uniform(255)/255), alpha: 1.0)
        
        img.backgroundColor = UIColor(colorLiteralRed: Float(arc4random_uniform(255))/255, green: Float(arc4random_uniform(255))/255, blue: Float(arc4random_uniform(255))/255, alpha: Float(arc4random_uniform(255))/255)
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        lbl_fld.text=texto

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tercerSegue" {
            let controller = segue.destination as! UltimaVista
            controller.texto = texto
        }
    }
    

    

}
