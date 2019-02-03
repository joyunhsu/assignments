//
//  ViewController.swift
//  DataAssignment
//
//  Created by 徐若芸 on 2019/2/2.
//  Copyright © 2019 Jo Hsu. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    let client = StationClient()
    let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        client.getStation(with: url!) { [unowned self] station, error in
            self.displayStation(using: station!)
        }
    }

    func displayStation(using station: Station) {
        stationIDLabel.text = station.stationID
        stationNameLabel.text = station.stationName
        addressLabel.text = station.stationAddress
    }
    
    
    
    
    
    
    
    
    
}

