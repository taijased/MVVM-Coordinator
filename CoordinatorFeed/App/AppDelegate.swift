//
//  AppDelegate.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 28/02/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
//    var coordinator: UserEditCoordinator!
    var coordinator: RecipeCoordinator!
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        guard let navigationController = window?.rootViewController as? UINavigationController else { return true }
//        let user = User(name: "Pavel Gurov", city: City(name: "Moscow"))
        
//        coordinator = UserEditCoordinator(user: user, navigationController: navigationController)
        
        
        let recipes = [Recipe(title: "Реставрация стула"),
                       Recipe(title: "Самодельный стол"),
                       Recipe(title: "Табуретка"),
                       Recipe(title: "Ламинат кастомный"),
                       Recipe(title: "Кастомные двери")]
        
        
        coordinator = RecipeCoordinator(recipes: recipes, navigationController: navigationController)
        
        
        
        coordinator.start()
        return true
    }
}

