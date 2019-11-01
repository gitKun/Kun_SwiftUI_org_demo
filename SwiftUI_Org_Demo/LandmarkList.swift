//
//  LandmarkList.swift
//  SwiftUI_Org_Demo
//
//  Created by DR_Kun on 2019/10/28.
//  Copyright © 2019 DR_Kun. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        
        List {
            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Favorite only")
            }
            
            ForEach(userData.landmarks) { landmark in
                if !self.userData.showFavoritesOnly || landmark.isFavorite {
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
        }
        .navigationBarTitle(Text("Landmarks"))
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone Xs"], id: \.self) { deviceName in
            NavigationView {
                LandmarkList()
            }
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
        .environmentObject(UserData())
    }
}
