//
//  DarkSkyError.swift
//  Stormy
//
//  Created by 徐若芸 on 2019/2/3.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

enum DarkSkyError: Error {
    case requestFailed
    case responseUnsuccessful(statusCode: Int)
    case invalidData
    case jsonParsingFailure
    case invalidUrl
}
























