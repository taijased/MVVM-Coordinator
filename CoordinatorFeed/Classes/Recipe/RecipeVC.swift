//
//  RecipeVC.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 28/02/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit

class RecipeVC: UIViewController {
    var onTapClose: (() -> Void)?
    var recipe: Recipe?
    
    @IBAction func closeRecipe(_ sender: UIButton) {
        onTapClose?()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.recipe!.title)
    }
    
    //    хуйня чтобы спрятать navigationController
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
}

