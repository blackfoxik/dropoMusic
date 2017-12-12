//
//  AppStoryboard.swift
//  dropoMusic
//
//  Created by Anton on 12.12.17.
//  Copyright © 2017 Anton. All rights reserved.
//

import Foundation
import UIKit

enum AppStoryboard: String {
    case Main
    case Source
    case Songs
    
    var instance: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    
    func viewController<T: UIViewController> (viewControllerClass: T.Type) -> T? {
        return self.instance.instantiateViewController(withIdentifier: viewControllerClass.storyboardID) as? T
    }
    
    func initialViewController() -> UIViewController? {
        return instance.instantiateInitialViewController()
    }
    
}

extension UIViewController {
    class var storyboardID: String {
        return "\(self)"
    }
    
    static func instantiateFromAppStoryboard(appStoryboard: AppStoryboard) -> Self? {
        return appStoryboard.viewController(viewControllerClass: self)
    }
}
