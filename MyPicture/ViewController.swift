//
//  ViewController.swift
//  MyPicture
//
//  Created by Jinho Choi on 2020/07/21.
//  Copyright © 2020 Jinho Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var movieTitle = "Zootopia";
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refresh()
        //로드 될때 영화 제목을 보여주는거고
    }

    @IBAction func Button(_ sender: Any) {
        let message = "영화제목은 \(movieTitle) 입니다."
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            self.refresh()
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func refresh(){
        let randomValue = arc4random_uniform(10000) + 1
        movieTitle = String(randomValue)
        movieTitleLabel.text = "\(movieTitle)"
    }
}

