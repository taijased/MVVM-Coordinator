//
//  UserEditCoordinator.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 28/02/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit

final class UserEditCoordinator {
    
    // MARK: - Properties
    private var user: User { didSet { updateInterfaces() } }
    private weak var navigationController: UINavigationController?
    
    
    // MARK: - Init
    init(user: User, navigationController: UINavigationController) {
        self.user = user
        self.navigationController = navigationController
    }
    
    func start() {
        showUserEditScreen()
    }
    
    // MARK: - Private implementation
    private func showUserEditScreen() {
        let controller = UIStoryboard.makeUserEditController()
        controller.user = user
        controller.onSelectCity = { [weak self] in
            self?.showCitiesScreen()
        }
        controller.onSelectUserName = { [weak self] in
            self?.showUserNameScreen()
        }
        navigationController?.pushViewController(controller, animated: false)
    }
    
    private func showCitiesScreen() {
        let controller = UIStoryboard.makeCitiesController()
        controller.onCitySelected = { [weak self] city in
            self?.user.city = city
            _ = self?.navigationController?.popViewController(animated: true)
        }
        navigationController?.pushViewController(controller, animated: true)
    }
    
    private func showUserNameScreen() {
        let controller = UIStoryboard.makeUserNameController()
        controller.onUserNameSelected = { [weak self] userName in
            self?.user.name = userName.name
            _ = self?.navigationController?.popViewController(animated: true)
        }
        navigationController?.pushViewController(controller, animated: true)
    }
    
    private func updateInterfaces() {
        navigationController?.viewControllers.forEach {
            ($0 as? UpdateableWithUser)?.user = user
        }
    }
}
