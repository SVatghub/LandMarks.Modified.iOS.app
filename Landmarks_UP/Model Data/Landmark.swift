//
//  Landmark.swift
//  Landmarks_UP
//
//  Created by Sahil on 02/04/24.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Hashable,Identifiable{
    var id : Int
    var name : String
    var park : String
    var state : String
    var description : String
    
    
    private var imageName : String
    var image : Image{
        Image(imageName)
    }
    
    private var coordinates : Coordinates
    
    var locationCordinates : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable{
        var latitude : Double
        var longitude : Double
    }
}
