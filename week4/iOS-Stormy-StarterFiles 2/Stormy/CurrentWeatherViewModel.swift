//
//  CurrentWeatherViewModel.swift
//  Stormy
//
//  Created by 徐若芸 on 2019/2/1.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeatherViewModel {
    let temperature: String
    let humidity: String
    let precipitationProbability: String
    let summary: String
    let icon: UIImage
    
    init(model: CurrentWeather) {
        let roundedTemperature = Int(model.temperature)
        self.temperature = "\(roundedTemperature)º"
        
        let humidityPercentValue = model.humidity * 100
        self.humidity = "\(humidityPercentValue)%"
        
        let precipitationPercentValue = model.precipProbobility * 100
        self.precipitationProbability = "\(precipitationPercentValue)%"
        
        self.summary = model.summary
        self.icon = model.iconImage
    }
}


















