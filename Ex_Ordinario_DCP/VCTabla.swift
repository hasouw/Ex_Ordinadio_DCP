//
//  VCTabla.swift
//  Ex_Ordinario_DCP
//
//  Created by Daniel Chantres Palacios on 19/6/18.
//  Copyright © 2018 Daniel Chantres Palacios. All rights reserved.
//

import UIKit
import MapKit

class VCTab: UIViewController, LocationAdminDelegate {
    
    @IBOutlet var MiMapa:MKMapView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataHolder.sharedInstance.locationAdmin?.delegate=self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func localizacionActualizada(coordenada: CLLocationCoordinate2D) {
        centralizarEnPosicion(coordenada: coordenada)
    }
    
    func centralizarEnPosicion(coordenada:CLLocationCoordinate2D)  {
        let region:MKCoordinateRegion=MKCoordinateRegion( center:coordenada,span:MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        MiMapa?.setRegion(region, animated: true)
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
