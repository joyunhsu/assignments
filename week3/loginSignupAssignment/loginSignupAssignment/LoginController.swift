//
//  LoginController.swift
//  loginSignupAssignment
//
//  Created by 徐若芸 on 2019/1/27.
//  Copyright © 2019 Jo Hsu. All rights reserved.
//

import UIKit

class LoginController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var loginAccountField: UITextField!
    @IBOutlet weak var loginPasswordField: UITextField!
    @IBOutlet weak var loginCheckField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loginCheckField.isEnabled = false
        loginCheckField.backgroundColor = UIColor(red: 155/255.0, green: 155/255.0, blue: 155/255.0, alpha: 1.0)
        
    }
    
    @IBAction func loginButton() {
        let accountText = loginAccountField.text
        let passwordText = loginPasswordField.text
        let loginData = LoginData(account: accountText, password: passwordText)
        do {
            try loginData.login()
        }  catch LoginError.loginFail {
            showAlertWith(title: "Error", message: "Login fail.")
        } catch LoginError.emptyAccount {
            showAlertWith(title: "Error", message: "Account should not be empty.")
        } catch LoginError.emptyPassword {
            showAlertWith(title: "Error", message: "Password should not be empty.")
        }
        catch let error {
            fatalError("\(error)")
        }
    }
    
    
    func showAlertWith(title: String, message: String, style: UIAlertController.Style = .alert) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: dismissAlert)
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func dismissAlert(sender: UIAlertAction) -> Void {
    }
    


}
