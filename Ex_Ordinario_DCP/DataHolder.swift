//
//  DataHolder.swift
//  
//
//  Created by Daniel Chantres Palacios on 19/6/18.
//

import UIKit
import Firebase

class DataHolder: NSObject {
    static let sharedInstance:DataHolder=DataHolder()
    
    var numeroCeldasColeccion:UInt=20;
    var locationAdmin:LocationAdmin?
    
    func initLocationAdmin(){
        locationAdmin=LocationAdmin()
    }
    
    func initFireBase(){
        FIRApp.configure()
    }

}
