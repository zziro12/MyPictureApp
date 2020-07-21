//
//  ViewController.swift
//  MyPicture
//
//  Created by Jinho Choi on 2020/07/21.
//  Copyright © 2020 Jinho Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func Button(_ sender: Any) {
        print("test")
        
        let alert = UIAlertController(title: "test!!!", message: "my First alert in iPhone", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
}

