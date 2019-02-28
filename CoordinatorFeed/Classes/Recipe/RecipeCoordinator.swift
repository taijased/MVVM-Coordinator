//
//  RecipeCoordinator.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 28/02/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//


import UIKit

final class RecipeCoordinator {
    
    // MARK: - Properties
//    private var user: User { didSet { updateInterfaces() } }
    private var recipes: [Recipe]
    
    
    private weak var navigationController: UINavigationController?
    
    
    
    
    // MARK: - Init
//    init(user: User, navigationController: UINavigationController) {
//        self.user = user
//        self.navigationController = navigationController
//    }
    
    init(recipes: [Recipe], navigationController: UINavigationController) {
        self.recipes = recipes
        self.navigationController = navigationController
        
    }
    
    func start() {
        showAllRecipeScreen()
    }
    
    // MARK: - Private implementation
    private func showAllRecipeScreen() {
        let controller = UIStoryboard.makeRecipeController()
        controller.recipes = recipes
        controller.onSelectRecipe = { [weak self] index in
            self?.showRecipeScreen(index: index)
        }
        navigationController?.pushViewController(controller, animated: true)
    }
    
    private func showRecipeScreen(index: Int) {
        
        
        let controller = UIStoryboard.makeRecipeVC()
        controller.recipe = recipes[index]
        controller.onTapClose = { [weak self] in
            self?.showAllRecipeScreen()
//            _ = self?.navigationController?.popViewController(animated: true)
        }
       
        navigationController?.pushViewController(controller, animated: true)
    }

//    private func updateInterfaces() {
//        navigationController?.viewControllers.forEach {
//            ($0 as? UpdateableWithUser)?.user = user
//        }
//    }
}
