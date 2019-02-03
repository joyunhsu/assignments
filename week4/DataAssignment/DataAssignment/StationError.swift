//
//  StationError.swift
//  DataAssignment
//
//  Created by 徐若芸 on 2019/2/3.
//  Copyright © 2019 Jo Hsu. All rights reserved.
//

import Foundation

enum StationError: Error {
        case requestFailed
        case responseUnsuccessful(statusCode: Int)
        case invalidData
        case jsonParsingFailure
        case invalidUrl
}







