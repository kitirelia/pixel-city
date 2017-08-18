//
//  DroppablePin.swift
//  pixel-city
//
//  Created by kitiwat chanluthin on 8/18/17.
//  Copyright © 2017 kitiwat chanluthin. All rights reserved.
//

import UIKit
import MapKit

class DropablePin:NSObject,MKAnnotation{
    dynamic var coordinate : CLLocationCoordinate2D
    var identifier : String
    
    init(coordinate:CLLocationCoordinate2D,identifier:String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
