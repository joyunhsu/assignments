//
//  SignupController.swift
//  loginSignupAssignment
//
//  Created by 徐若芸 on 2019/1/27.
//  Copyright © 2019 Jo Hsu. All rights reserved.
//

import UIKit

class SignupController: UIViewController {

    @IBOutlet weak var signupAccountField: UITextField!
    @IBOutlet weak var signupPasswordField: UITextField!
    @IBOutlet weak var signupCheckField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func singupButton() {
        let accountText = signupAccountField.text
        let passwordText = signupPasswordField.text
        let checkText = signupCheckField.text
        let signupData = SignupData(account: accountText, password: passwordText, check: checkText)
        do {
            try signupData.signup()
        }  catch SignupError.signupFail {
            showAlertWith(title: "Error", message: "Signup fail")
        } catch SignupError.emptyAccount {
            showAlertWith(title: "Error", message: "Account should not be empty.")
        } catch SignupError.emptyCheck {
            showAlertWith(title: "Error", message: "Check should not be empty")
        } catch SignupError.emptyPassword {
            showAlertWith(title: "Error", message: "Password should not be empty")
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
