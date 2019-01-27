//
//  LoginSignup.swift
//  loginSignupAssignment
//
//  Created by 徐若芸 on 2019/1/27.
//  Copyright © 2019 Jo Hsu. All rights reserved.
//

import Foundation
import UIKit

enum SignupError: Error {
    case emptyAccount
    case emptyCheck
    case emptyPassword
    case signupFail
}

enum LoginError: Error {
    case loginFail
    case emptyAccount
    case emptyPassword
}

class LoginData {
    var account: String?
    var password: String?
    
    init(account: String?, password: String?) {
        self.account = account
        self.password = password
    }
    
    func login() throws {
        guard self.account != "" else {
            throw LoginError.emptyAccount
        }
        guard self.password != "" else {
            throw LoginError.emptyPassword
        }
        guard self.account == "appworks@gmail.com", self.password == "1234" else {
            throw LoginError.loginFail
        }
    }
}



class SignupData {
    var account: String?
    var password: String?
    var check: String?
    
    init(account: String?, password: String?, check: String?) {
        self.account = account
        self.password = password
        self.check = check
    }
    
    func signup() throws {
        guard self.account != "" else {
            throw SignupError.emptyAccount
        }
        guard self.password != "" else {
            throw SignupError.emptyPassword
        }
        guard self.check != "" else {
            throw SignupError.emptyCheck
        }
        guard self.password == self.check else {
            throw SignupError.signupFail
        }
    }
    
    
}











