//
//  ViewController.swift
//  Alpha_ios
//
//  Created by Vladislav on 02.10.2023.
//

import UIKit

final class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemPink
        
        let url: URL = URL(string: "https://api.punkapi.com/v2/beers")!
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard let data = data,
                  let response,
                    error == nil
            else {
                return
            }
            let str = String(data: data, encoding:  .utf8)
            print(" Your data is: \(str ?? "")");
        }).resume()
        //completionHandler выполняет какое-то действие в тот момент, когда мы получили данные с сервера.
    }


}

