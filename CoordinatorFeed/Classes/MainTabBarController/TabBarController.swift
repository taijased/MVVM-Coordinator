//
//  TabBarController.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 01/03/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//
import UIKit

final class TabBarController: UITabBarController, StoryboardInitializable {
    
//
//    lazy public var categoryListViewController: CategoryListViewController = {
//
//        print("asdfggbtvrvbnhjmkhj")
//        let categoryListViewController = CategoryListViewController()
//        let title = "Categories"
//
//        let defaultImage = UIImage(named: "categories")!
//
//        let selectedImage = UIImage(named: "categories__active")!
//
//        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
//
//        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
//
//        categoryListViewController.tabBarItem = tabBarItem
//
//        return categoryListViewController
//    }()
//
//    lazy public var finalTabBar: ViewController = {
//
//        print("asdfghj")
//        let finalTabBar = ViewController()
//
//        let defaultImage = UIImage(named: "categories")
//
//        let selectedImage = UIImage(named: "categories")
//
//        let tabBarItem = UITabBarItem(title: "View", image: defaultImage, selectedImage: selectedImage)
//
//        finalTabBar.tabBarItem = tabBarItem
//
//        return finalTabBar
//    }()
//
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(true)
//        self.viewControllers = []
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension TabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
    
}
