//
//  MinusViewController.swift
//  Task7.1
//
//  Created by 坂本龍哉 on 2020/10/12.
//

import UIKit

class MinusViewController: UIViewController {
//privateをつける
    @IBOutlet private weak var minusText1: UITextField!
    @IBOutlet private weak var minusText2: UITextField!
    @IBOutlet private weak var minusButton: UIButton!
    @IBOutlet private weak var minusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
 // UIColorはいらない
        view.backgroundColor = .green
        minusText1.keyboardType = .numberPad
        minusText2.keyboardType = .numberPad

    }
    
    @IBAction func minusButtonAction(_ sender: Any) {
        
        let minusnum1 = Double(minusText1.text!) ?? 0
        let minusnum2 = Double(minusText2.text!) ?? 0

        minusLabel.text = String(minusnum1 - minusnum2)
        view.endEditing(true)

    }
}
