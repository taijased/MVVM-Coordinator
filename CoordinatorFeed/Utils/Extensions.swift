//
//  Extensions.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 28/02/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    private static let userEdit = UIStoryboard(name: "Main", bundle: nil)
    
    class func makeUserEditController() -> UserEditViewController {
        return UIStoryboard.userEdit.instantiateViewController(withIdentifier: "UserEditViewController") as! UserEditViewController
    }
    
    class func makeCitiesController() -> CitiesViewController {
        return UIStoryboard.userEdit.instantiateViewController(withIdentifier: "CitiesViewController") as! CitiesViewController
    }
//
    class func makeUserNameController() -> UserNameVC {
        return UIStoryboard.userEdit.instantiateViewController(withIdentifier: "UserNameVC") as! UserNameVC
    }
    
    class func makeRecipeController() -> RecipeViewController {
        return UIStoryboard.userEdit.instantiateViewController(withIdentifier: "RecipeViewController") as! RecipeViewController
    }
    class func makeRecipeVC() -> RecipeVC {
        return UIStoryboard.userEdit.instantiateViewController(withIdentifier: "RecipeVC") as! RecipeVC
    }
    
    
}
