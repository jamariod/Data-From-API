//
//  MyResult.swift
//  Data-From-API
//
//  Created by Jamario Davis on 6/13/20.
//  Copyright © 2020 KAYCAM. All rights reserved.
//

import Foundation

struct MyResult: Codable {
    let sunrise: String
    let sunset: String
    let solar_noon: String
    let day_length: Int 
    let civil_twilight_begin: String
    let civil_twilight_end: String
    let nautical_twilight_begin: String
    let nautical_twilight_end: String
    let astronomical_twilight_begin: String
    let astronomical_twilight_end: String
}
