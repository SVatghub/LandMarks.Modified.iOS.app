//
//  CircleImage.swift
//  Landmarks_UP
//
//  Created by Sahil on 03/04/24.
//

import SwiftUI

struct CircleImage: View {
    var landmark : Landmark
    var body: some View {
        landmark.image
            .clipShape(Circle())
            .overlay(Circle().stroke(.white,lineWidth: 4))
            .shadow(radius: 10)
    }
}

#Preview {
    CircleImage(landmark: landmarks[0])
}
