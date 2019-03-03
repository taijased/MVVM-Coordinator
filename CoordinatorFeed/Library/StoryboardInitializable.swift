//
//  StoryboardInitializable.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 01/03/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit

protocol StoryboardInitializable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardInitializable where Self: UIViewController {
    
    static var storyboardIdentifier: String {
        return String(describing: Self.self)
    }
    
    static func initFromStoryboard(name: String = "Main") -> Self {
        let storyboard = UIStoryboard(name: name, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}
