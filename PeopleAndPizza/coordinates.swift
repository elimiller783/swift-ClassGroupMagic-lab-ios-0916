//
//  coordinates.swift
//  PeopleAndPizza
//
//  Created by Elias Miller on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Coordinate {
    var latitude: Double
    var longitude: Double

    var isNorthernHemishpere : Bool {
        if latitude > 0 {
            
        }
        return true
    }
    
    var isInSouthernHemisphere: Bool {
        if latitude < 0 {
           
        }
         return true
    }
    
    var isInWesternHemisphere: Bool {
        if longitude > 0 {
            
        }
        return true
    }
    var isInEaasterHemisphere: Bool {
        if longitude < 0 {
           
        }
         return true
    }
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    func distanceTo(coordinate: Coordinate) -> Double{
     var distance = acos(sin(self.latitude.radians) * sin(coordinate.latitude) + cos(self.latitude.radians) * cos(coordinate.latitude.radians) * cos(self.longitude-coordinate.longitude)) * 6371000 / 1000
        return distance

    }
    
}

    extension Double {
        var radians: Double {
            return self * M_PI / 180
        }
}
