//
//  PageControl.swift
//  SwiftUI_Org_Demo
//
//  Created by DR_Kun on 2019/11/2.
//  Copyright © 2019 DR_Kun. All rights reserved.
//

import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    
    func makeCoordinator() -> Coordinator2 {
        Coordinator2(self)
    }
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.addTarget(
            context.coordinator,
            action: #selector(Coordinator.updateCurrentPage(sender:)),
            for: .valueChanged
        )
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
         uiView.currentPage = currentPage
    }
}

class Coordinator2: NSObject {
    var control: PageControl
    
    init(_ control: PageControl) {
        self.control = control
    }
    
    @objc func updateCurrentPage(sender: UIPageControl) {
        control.currentPage = sender.currentPage
    }

}
