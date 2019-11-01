//
//  ContentView.swift
//  SwiftUI_Org_Demo
//
//  Created by DR_Kun on 2019/10/28.
//  Copyright © 2019 DR_Kun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView(coordinate: landmarkData[0].locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: Image("turtlerock"))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
