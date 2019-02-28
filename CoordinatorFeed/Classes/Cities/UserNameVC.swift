//
//  UserNameVC.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 28/02/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit

final class UserNameVC: UITableViewController {
    
    // MARK: - Output -
    
    
    var onUserNameSelected: ((UserName) -> Void)?
    
    // MARK: - Private variables -
    private let userNames: [UserName] = [UserName(name: "Иван Делишко"),
                                  UserName(name: "Работа Не Волк"),
                                  UserName(name: "Максим Спиридонов"),
                                  UserName(name: "Костя ПростоКостя")]
    
    // MARK: - Table -
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return userNames.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellName", for: indexPath)
        cell.textLabel?.text = userNames[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        onUserNameSelected?(userNames[indexPath.row])
    }
}
