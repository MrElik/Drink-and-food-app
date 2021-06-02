//
//  ViewController.swift
//  Test segue
//
//  Created by macbook on 01.06.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var enterDrinkTF: UITextField!
    @IBOutlet weak var foodLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else { return }
            secondVC.drinkValue = enterDrinkTF.text! }
    
    @IBAction func pressTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "some", sender: nil)
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
         guard let secondVC2 = segue.source as? SecondViewController else { return }
        foodLabel.text = secondVC2.enterFoodNameTF.text
        enterDrinkTF.text = ""
    }
    
    
}



