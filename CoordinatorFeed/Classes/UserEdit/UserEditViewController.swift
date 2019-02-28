//
//  UserEditViewController.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 28/02/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//


import UIKit

final class UserEditViewController: UIViewController, UpdateableWithUser {
    
    // MARK: - Input -
    var user: User? { didSet { updateView() } }
    
    // MARK: - Output -
    var onSelectCity: (() -> Void)?
    var onSelectUserName: (() -> Void)?

    @IBOutlet weak var userLabel: UILabel!
    
    @IBAction func selectCityTap(_ sender: UIButton) {
        onSelectCity?()
    }
    @IBAction func selectUserNameTap(_ sender: UIButton) {
        onSelectUserName?()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateView()
    }
    
    private func updateView() {
        userLabel?.text = "User: \(user?.name ?? ""), \n"
            + "City: \(user?.city?.name ?? "")"
    }
}
