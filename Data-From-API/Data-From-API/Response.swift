//
//  Response.swift
//  Data-From-API
//
//  Created by Jamario Davis on 6/13/20.
//  Copyright © 2020 KAYCAM. All rights reserved.
//

import Foundation

struct Response: Codable {
    let results: MyResult
    let status: String 
}
