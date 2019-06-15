//
//  ViewController.swift
//  FormVadidationDemo
//
//  Created by Duc on 6/4/19.
//  Copyright © 2019 Đức Đẹp Trai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var labelVadidation: UILabel!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var labelVadidation2: UILabel!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupView()
    }
    
    fileprivate func setupView() {
        // Configure Password Validation Label
        labelVadidation.isHidden = true
        labelVadidation2.isHidden = true
    }


    @IBAction func btnClick(_ sender: UIButton) {
        if textField.text == "" {
            self.button.isEnabled = true
            UIView.animate(withDuration: 0.25, animations: {
                self.labelVadidation.isHidden = false
                self.labelVadidation.text = "May oi, Khong duoc de trong dau nha"
                self.labelVadidation.textColor = .red
                self.view.layoutIfNeeded()
            })
        } else {
            self.labelVadidation.isHidden = true
        }
    }
}

