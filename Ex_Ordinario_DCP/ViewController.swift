//
//  ViewController.swift
//  Ex_Ordinario_DCP
//
//  Created by Daniel Chantres Palacios on 19/6/18.
//  Copyright © 2018 Daniel Chantres Palacios. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    @IBOutlet var btnLogear:UIButton?
    @IBOutlet var txtUsuario:UITextField?
    @IBOutlet var txtPass:UITextField?
    @IBOutlet var txtVconsola:UITextView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //DataHolder.sharedInstance
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func accionBotonLogear(){
        Auth.auth().signIn(withEmail: (txtUsuario?.text)!, password: (txtPass?.text)!) { (user, error) in
            if (error==nil){
                self.performSegue(withIdentifier: "tran1", sender: self)
            }else{
                print("Error en registro: ", error!)
            }
        }    }


}

