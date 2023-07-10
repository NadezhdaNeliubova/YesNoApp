//
//  ViewController.swift
//  YesNo
//
//  Created by Nadezhda Neliubova on 09.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerButton.layer.cornerRadius = 10
    }

    @IBAction func answerButtonAction(_ sender: Any) {
        let answer = Bool.random()
        answerLabel.text = ""
        
        answerButton.configuration?.buttonSize = .large
        answerButton.setTitle("Push me", for: .normal)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.answerLabel.text = answer ? "YES" : "NO"
        }
        
    }
    
}

