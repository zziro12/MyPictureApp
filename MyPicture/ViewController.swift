//
//  ViewController.swift
//  MyPicture
//
//  Created by Jinho Choi on 2020/07/21.
//  Copyright © 2020 Jinho Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var movieScore = "";
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refresh()
        //로드 될때 영화점수를 보여줌
    }

    @IBAction func Button(_ sender: Any) {
        let message = "영화의 점수는 \(movieScore) 입니다."
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            self.refresh()
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func refresh(){
        let randomValue = arc4random_uniform(10000) + 1
        movieScore = String(randomValue)
        movieTitleLabel.text = "is \(movieScore) point"
    }
}

