//
//  ViewController.swift
//  Maps Demo
//
//  Created by George Gogarten on 6/18/16.
//  Copyright © 2016 George Gogarten. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController, MKMapViewDelegate {

    
    @IBOutlet weak var map: MKMapView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var latitude:CLLocationDegrees = 51.100115
        
        var longitude:CLLocationDegrees = 7.504789
        
        var latDelta:CLLocationDegrees = 0.005
        
        var lonDelta:CLLocationDegrees = 0.005
        
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: true)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

