//
//  Protocols.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 28/02/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import Foundation

protocol UpdateableWithUser: class {
    var user: User? { get set }
}
