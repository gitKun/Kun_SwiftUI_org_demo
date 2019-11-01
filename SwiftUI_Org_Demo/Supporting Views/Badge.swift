//
//  Badge.swift
//  SwiftUI_Org_Demo
//
//  Created by DR_Kun on 2019/10/29.
//  Copyright © 2019 DR_Kun. All rights reserved.
//

import SwiftUI

struct Badge: View {
    static let rotationCount = 8
    static let gradientStart = Color(red: 239.0/255.0, green: 120.0/255.0, blue: 221.0/255.0)
    static let gradientEnd  = Color(red: 239.0/255.0, green: 172.0/255.0, blue: 120.0/255.0)
    
    var badgeSymbols: some View {
        ForEach(0 ..< Badge.rotationCount) { i in
            RotatedBadgeSymbol(
                angle: .degrees(Double(i) / Double(Badge.rotationCount)) * 360
            )
        }
        .opacity(0.5)
    }
    
    
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                self.badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
