//
//  ViewController.swift
//  TestApp
//
//  Created by Hutchison, Gabriel on 3/9/17.
//  Copyright (c) 2017 Hutchison, Gabriel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var awesomeSlider: UISlider!
    @IBOutlet weak var awesomeLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    let twoThird: Float = 0.66, oneThird: Float = 0.33;
    @IBAction func awesomeUpdate(sender: AnyObject) {
        var slider: UISlider = awesomeSlider;
        var output = nameTextField.text + " ";
        if (slider.value > twoThird) {
            output += "And very much awesome.";
        } else if (slider.value > oneThird) {
            output += "Not much but yeah some.";
        } else {
            output += "Is just not awesome :(";
        }
        awesomeLabel.text = output;
    }
    @IBAction func hideKeyboard(sender: AnyObject) {
        self.view.endEditing(true);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

