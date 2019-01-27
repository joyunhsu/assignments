//
//  ViewController.swift
//  loginSignupAssignment
//
//  Created by 徐若芸 on 2019/1/27.
//  Copyright © 2019 Jo Hsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var signupView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func switchViews(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            loginView.alpha = 1
            signupView.alpha = 0
        } else {
            loginView.alpha = 0
            signupView.alpha = 1
        }
    }


}

