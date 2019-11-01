//
//  PageViewController.swift
//  SwiftUI_Org_Demo
//
//  Created by DR_Kun on 2019/10/29.
//  Copyright © 2019 DR_Kun. All rights reserved.
//

import SwiftUI
import UIKit

struct PageViewController: UIViewControllerRepresentable {
    var controllers: [UIViewController]
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll, navigationOrientation: .horizontal
        )
        
        return pageViewController
    }
    
    func updateUIViewController(_ viewController: UIPageViewController, context: Context) {
        viewController
            .setViewControllers(
                [controllers[0]],
                direction: .forward,
                animated: true
        )
    }
    
}

