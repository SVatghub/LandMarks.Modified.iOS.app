//
//  LandmarkRow.swift
//  Landmarks_UP
//
//  Created by Sahil on 02/04/24.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark : Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

#Preview{
    Group {
        LandmarkRow(landmark: landmarks[0])
    }
}
