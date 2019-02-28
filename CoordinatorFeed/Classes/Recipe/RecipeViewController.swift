//
//  RecipeViewController.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 28/02/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit

final class RecipeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    

    @IBOutlet weak var collectionView: UICollectionView!
    // MARK: - Input -
    var recipes: [Recipe]?
    
    // MARK: - Output -
    var onSelectRecipe: ((Int) -> Void)?
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipes?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as! RecipeViewCell
        
        
        cell.recipeTitle.text = recipes?[indexPath.row].title
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        cell.addGestureRecognizer(tap)
        return cell
        
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {

        if let indexPath = self.collectionView?.indexPathForItem(at: sender.location(in: self.collectionView)) {
//            let cell = self.collectionView?.cellForItem(at: indexPath)
            onSelectRecipe?(indexPath.row)
        } else {
            print("Такого индекса не существует в collectionView")
        }
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
