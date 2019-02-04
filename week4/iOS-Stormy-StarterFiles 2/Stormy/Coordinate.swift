//
//  Coordinate.swift
//  Stormy
//
//  Created by 徐若芸 on 2019/2/3.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

struct Coordinate {
    let latitude: Double
    let longitude: Double
}

extension Coordinate: CustomStringConvertible {
    var description: String {
        return "\(latitude),\(longitude)"
    }
    
    static var alcatrazIsland: Coordinate {
        return Coordinate(latitude: 37.8267, longitude: -122.4233)
    }
}





