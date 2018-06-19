//
//  VCRegister.swift
//  
//
//  Created by Daniel Chantres Palacios on 19/6/18.
//

import UIKit
import FirebaseAuth

class VCRegister: UIViewController {
    
    @IBOutlet var txtEmail:UITextField?
    @IBOutlet var txtPass:UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func accionBotonRegistrar(){
        Auth.auth().createUser(withEmail: (txtEmail?.text)!, password: (txtPass?.text)!) { (user, error) in
            // ...
        }
        self.performSegue(withIdentifier: "trregistro", sender: self)
    }
        
       
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
