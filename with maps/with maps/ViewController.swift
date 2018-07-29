//
//  ViewController.swift
//  with maps
//
//  Created by Jean Fernandes on 06/07/2018.
//  Copyright © 2018 Jean Fernandes. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapa: MKMapView!
    var gerenciadorLocal = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //playLocalizacao()
        
        gerenciadorLocal.delegate = self
        gerenciadorLocal.desiredAccuracy = kCLLocationAccuracyBest
        gerenciadorLocal.requestWhenInUseAuthorization()
        gerenciadorLocal.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let localizacaoUsuario: CLLocation = locations.last!
        setPointOnMap(lat: localizacaoUsuario.coordinate.latitude, long: localizacaoUsuario.coordinate.longitude)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func playLocalizacao(){
        let latitude: CLLocationDegrees = -23.586974
        let longitude: CLLocationDegrees = -46.657355
        let deltaLatitude: CLLocationDegrees = 0.2
        let deltaLongitude: CLLocationDegrees = 0.2
    
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let areaVisualizacao:MKCoordinateSpan = MKCoordinateSpanMake(deltaLatitude, deltaLongitude)
    
        let regiao: MKCoordinateRegion = MKCoordinateRegionMake(localizacao, areaVisualizacao)
        mapa.setRegion(regiao, animated: true)
        
        let anotacao = MKPointAnnotation()
        anotacao.coordinate = localizacao
        anotacao.title = "teste"
        anotacao.subtitle = "subtitle"
        
        mapa.addAnnotation(anotacao)
    }
    
    func setPointOnMap(lat: CLLocationDegrees, long: CLLocationDegrees){
        let latitude: CLLocationDegrees = lat
        let longitude: CLLocationDegrees = long
        let deltaLatitude: CLLocationDegrees = 0.2
        let deltaLongitude: CLLocationDegrees = 0.2
        
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let areaVisualizacao:MKCoordinateSpan = MKCoordinateSpanMake(deltaLatitude, deltaLongitude)
        
        let regiao: MKCoordinateRegion = MKCoordinateRegionMake(localizacao, areaVisualizacao)
        mapa.setRegion(regiao, animated: true)
    }

}

