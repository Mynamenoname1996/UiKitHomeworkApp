//
//  ViewController.swift
//  UiKitHomeworkApp
//
//  Created by Gregory Odintsov on 27.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var numberOneLabel: UILabel!
    @IBOutlet var numberTwoLabel: UILabel!
    @IBOutlet var numberThreeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberOneLabel.text = String(redSlider.value)
        numberTwoLabel.text = String(greenSlider.value)
        numberThreeLabel.text = String(blueSlider.value)
        
        redSlider.tintColor = UIColor.red
        greenSlider.tintColor = UIColor.green
        blueSlider.tintColor = UIColor.blue
        
        colorView.layer.cornerRadius = 20
    }
    
    func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

    @IBAction func sliderAction() {
        changeColor()
        
        let redValue = (redSlider.value * 100).rounded()/100
        let greenValue = (greenSlider.value * 100).rounded()/100
        let blueValue = (blueSlider.value * 100).rounded()/100
        
        numberOneLabel.text = String(redValue)
        numberTwoLabel.text = String(greenValue)
        numberThreeLabel.text = String(blueValue)
    }
    
}

