//
//  ChangeCollorVC.swift
//  ChangeCollor
//
//  Created by Igor Baidak on 9.08.22.
//

import UIKit

class ChangeCollorVC: UIViewController, CollorUpdate {
    func onCollorUpdate(collor: UIColor) {
        changeBgrLbl.textColor = collor
    }
    
    var delegate: CollorUpdate?
    var collorLabelText: UIColor?
    
    
    @IBOutlet weak var changeBgrLbl: UILabel! {
        didSet { changeBgrLbl.textColor = collorLabelText}
    }
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redTextField: UITextField!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenTextField: UITextField!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueTextField: UITextField!
    
    @IBOutlet weak var hexTextField: UITextField!
    
    @IBOutlet weak var opacitySlider: UISlider!
    @IBOutlet weak var opacityTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func changeCollorLabel() {
        changeBgrLbl.textColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(opacitySlider.value))
    }
    
    
    
    @IBAction func rgbSlider(_ sender: UISlider) {
        changeCollorLabel()
        redTextField.text = String(NSString(format: "%.0f", redSlider.value * 100))
        greenTextField.text = String(NSString(format: "%.0f", greenSlider.value * 100))
        blueTextField.text = String(NSString(format: "%.0f", blueSlider.value * 100))
    }
    
    @IBAction func redTF(_ sender: UITextField) {
        guard let myValueRed = redTextField.text, !myValueRed.isEmpty else { return }
        if let myValueRed = Float(redTextField.text!), myValueRed <= 1
        {
            redSlider.value = myValueRed
            changeCollorLabel()
        }
    }
    
    @IBAction func greenTF(_ sender: UITextField) {
        guard let myValueGreen = greenTextField.text, !myValueGreen.isEmpty else { return }
        if let myValueGreen = Float(greenTextField.text!), myValueGreen <= 1
        {
            greenSlider.value = myValueGreen
            changeCollorLabel()
        }
    }
    
    @IBAction func blueTF(_ sender: UITextField) {
        guard let myValueBlue = blueTextField.text, !myValueBlue.isEmpty else { return }
        if let myValueBlue = Float(blueTextField.text!), myValueBlue <= 1
        {
            blueSlider.value = myValueBlue
            changeCollorLabel()
        }
    }
    
    @IBAction func hexTF(_ sender: UITextField) {
       
    }
    
    
    @IBAction func opacitySlider(_ sender: UISlider) {
        opacityTextField.text = String(NSString(format: "%.0f", opacitySlider.value * 100))
        changeCollorLabel()
    }
    
    @IBAction func opacityTF(_ sender: UITextField) {
        guard let opacityValue = opacityTextField.text, !opacityValue.isEmpty else { return }
        if let opacityValue = Float(opacityTextField.text!), opacityValue <= 1 {
            opacitySlider.value = opacityValue
            changeCollorLabel()
        }
    }
    
   
    @IBAction func doneButton() {
        delegate?.onCollorUpdate(collor: changeBgrLbl.textColor)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
