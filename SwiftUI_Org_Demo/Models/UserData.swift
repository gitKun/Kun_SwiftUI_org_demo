//
//  UserData.swift
//  SwiftUI_Org_Demo
//
//  Created by DR_Kun on 2019/10/28.
//  Copyright © 2019 DR_Kun. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject{
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
