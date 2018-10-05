//
//  ViewController.swift
//  Color Picker
//
//  Created by Weston Verhulst on 10/5/18.
//  Copyright © 2018 Weston Verhulst. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {


    var colors = [pickerColor(colorName: "Red", UIColor: UIColor.red),
                  pickerColor(colorName: "Orange", UIColor: UIColor.orange),
                  pickerColor(colorName: "Yellow", UIColor: UIColor.yellow),
                  pickerColor(colorName: "Green", UIColor: UIColor.green),
                  pickerColor(colorName: "Blue", UIColor: UIColor.blue),
                  pickerColor(colorName: "Purple", UIColor: UIColor.purple)]
    
    
    @IBOutlet weak var ColorLabel: UILabel!
    @IBOutlet weak var ColorPicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ColorPicker.dataSource = self
        ColorPicker.delegate = self
        ColorLabel.text = colors[0].colorName
        view.backgroundColor = colors[0].UIColor
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].colorName
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ColorLabel.text = colors[row].colorName
        view.backgroundColor = colors[row].UIColor
    }
}

