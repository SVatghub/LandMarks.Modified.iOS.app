//
//  Mapview.swift
//  Landmarks_UP
//
//  Created by Sahil on 03/04/24.
//

import SwiftUI
import MapKit
struct Mapview: View {
    var landmark : Landmark
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
                MKCoordinateRegion(
                    center: CLLocationCoordinate2D(latitude: landmark.locationCordinates.latitude, longitude: landmark.locationCordinates.longitude),
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        }
}

#Preview {
    Mapview(landmark: landmarks[0])
}
