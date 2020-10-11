//
//  PlusViewController.swift
//  Task7.1
//
//  Created by 坂本龍哉 on 2020/10/12.
//

import UIKit

class PlusViewController: UIViewController {

    @IBOutlet weak var plusText1: UITextField!
    @IBOutlet weak var plusText2: UITextField!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var plusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.yellow
        plusText1.keyboardType = .numberPad
        plusText2.keyboardType = .numberPad


    }
    
    @IBAction func plusButtonAction(_ sender: Any) {
        
        let plusnum1 = Double(plusText1.text!) ?? 0
        let plusnum2 = Double(plusText2.text!) ?? 0

        plusLabel.text = String(plusnum1 + plusnum2)
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
