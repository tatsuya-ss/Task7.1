//
//  PlusViewController.swift
//  Task7.1
//
//  Created by 坂本龍哉 on 2020/10/12.
//

import UIKit

class PlusViewController: UIViewController {

    @IBOutlet private weak var plusText1: UITextField!
    @IBOutlet private weak var plusText2: UITextField!
    @IBOutlet private weak var plusButton: UIButton!
    @IBOutlet private weak var plusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        plusText1.keyboardType = .numberPad
        plusText2.keyboardType = .numberPad
    }
    
    @IBAction func plusButtonAction(_ sender: Any) {
        
        let plusnum1 = Double(plusText1.text!) ?? 0
        let plusnum2 = Double(plusText2.text!) ?? 0

        plusLabel.text = String(plusnum1 + plusnum2)
        view.endEditing(true)

    }
}
