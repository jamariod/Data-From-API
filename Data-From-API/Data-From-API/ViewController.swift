//
//  ViewController.swift
//  Data-From-API
//
//  Created by Jamario Davis on 6/13/20.
//  Copyright © 2020 KAYCAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "https://api.sunrise-sunset.org/json?date=2020-06-13&lat=-81.0912&lng=32.0809&formatted=0"
        getData(from: url)
    }
    
    private func getData(from url: String) {
        
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            
            guard let data = data, error == nil else {
                print("something went wrong")
                return
            }
            var result: Response?
            do {
                result = try JSONDecoder().decode(Response.self, from: data)
            }
            catch {
                print("failed to convert \(error.localizedDescription)")
            }
            guard let json = result else {
                return
            }
            print(json.status)
            print(json.results.sunrise)
            print(json.results.sunset)
            print(json.results.day_length)
            print(json.results.civil_twilight_begin)
            print(json.results.civil_twilight_end)
        })
        task.resume()
    }
}



































































