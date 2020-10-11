//
//  MinusViewController.swift
//  Task7.1
//
//  Created by 坂本龍哉 on 2020/10/12.
//

import UIKit

class MinusViewController: UIViewController {

    @IBOutlet weak var minusText1: UITextField!
    @IBOutlet weak var minusText2: UITextField!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var minusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.green
        minusText1.keyboardType = .numberPad
        minusText2.keyboardType = .numberPad

    }
    
    @IBAction func minusButtonAction(_ sender: Any) {
        
        let minusnum1 = Double(minusText1.text!) ?? 0
        let minusnum2 = Double(minusText2.text!) ?? 0

        minusLabel.text = String(minusnum1 - minusnum2)
        view.endEditing(true)

    }
    
//    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//            view.endEditing(true)
//        }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
