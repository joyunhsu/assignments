//
//  ViewController.swift
//  FunFacts
//
//  Created by 徐若芸 on 2019/1/16.
//  Copyright © 2019 Jo Hsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    @IBOutlet weak var assignmentLabel: UILabel!
    
    
    let factProvider = FactProvider()
    // It's okay to leave the () empty, cause the struct already have initail value
    let backgroundColorProvider = BackgroundColorProvider()
    let assignmentProvider = AssignmentProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factProvider.randomFact()
        
        assignmentLabel.text = assignmentProvider.randomText()
    }


    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
        
        let randomColor = backgroundColorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        
        assignmentLabel.text = assignmentProvider.randomText()
    }
}

