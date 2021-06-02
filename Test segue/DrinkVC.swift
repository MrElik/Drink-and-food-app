//
//  SecondViewController.swift
//  Test segue
//
//  Created by macbook on 01.06.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var drinkLabel: UILabel!
    @IBOutlet weak var goBackButton: UIButton!
    @IBOutlet weak var enterFoodNameTF: UITextField!
    
    var drinkValue: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard drinkValue == self.drinkValue else { return }
        drinkLabel.text = drinkValue
    }
    
}
