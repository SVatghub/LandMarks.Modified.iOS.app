//
//  LandmarkDetail.swift
//  Landmarks_UP
//
//  Created by Sahil on 03/04/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark : Landmark
    var body: some View {
        ScrollView{
            Mapview(landmark: landmark)
                .frame(height: 300)
            CircleImage(landmark: landmark)
                .offset(y:-130)
                .padding(.bottom,-130)
            VStack(alignment:.leading){
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
