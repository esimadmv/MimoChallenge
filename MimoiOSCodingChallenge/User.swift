//
//  User.swift
//  MimoiOSCodingChallenge
//
//  Created by Ehsan on 2017-09-23.
//  Copyright © 2017 Mimohello GmbH. All rights reserved.
//

import Foundation


class User {
    static let user = User()
    static let userDefaults = UserDefaults.standard

    var id: String!
    var accessToken: String!
    var emailaddress: String!

    func initialize(id: String, access: String, email: String) {
        self.id = id
        self.accessToken = access
        self.emailaddress = email
    }
    
    class func currentUser() -> User? {
        
        guard let id = userDefaults.string(forKey: "id"), let access = userDefaults.string(forKey: "accesstoken"),
            let email = userDefaults.string(forKey: "email") else {
                return nil
        }
        User.user.initialize(id: id, access: access, email: email)
        return User.user
    }
    
    
    
}
