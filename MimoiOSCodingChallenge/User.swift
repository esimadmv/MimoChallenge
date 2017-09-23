//
//  User.swift
//  MimoiOSCodingChallenge
//
//  Created by Ehsan on 2017-09-23.
//  Copyright © 2017 Mimohello GmbH. All rights reserved.
//

import Foundation


class User {
    static let sharedInstance = User()
    
    var id: String!
    var accessToken: String!
    var emailaddress: String!

    
    func initialize(id: String, access: String, email: String) {
        self.id = id
        self.accessToken = access
        self.emailaddress = email
    }
    
}
