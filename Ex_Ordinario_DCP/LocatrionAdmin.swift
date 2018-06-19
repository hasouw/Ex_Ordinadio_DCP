//
//  LocatrionAdmin.swift
//  
//
//  Created by Daniel Chantres Palacios on 19/6/18.
//

import UIKit
import CoreLocation

class LocatrionAdmin: NSObject, CLLocationManagerDelegate {
    var locationManager:CLLocationManager?
    var delegate:LocationAdminDelegate?
    override init() {
        super.init()
        
        locationManager=CLLocationManager()
        locationManager?.delegate=self
        locationManager?.requestAlwaysAuthorization()
        locationManager?.startUpdatingLocation()
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("Mi posicion en Latitud: ", locations[0].coordinate.latitude, " Longitud: ", locations[0].coordinate.longitude)
        delegate?.localizacionActualizada(coordenada: locations[0].coordinate)
    }
}
protocol LocationAdminDelegate {
    func localizacionActualizada(coordenada:CLLocationCoordinate2D)
}
