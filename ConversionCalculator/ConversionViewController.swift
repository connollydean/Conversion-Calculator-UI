//
//  ViewController.swift
//  Conversion Calculator
//
//  Created by Connolly Dean on 11/12/18.
//  Copyright © 2018 Connolly Dean. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    @IBOutlet weak var outputText: UITextField!
    @IBOutlet weak var inputText: UITextField!
    
    
    
    struct Converter {
        var label: String
        var inputUnit: String
        var outputUnit: String
    }
    
    let converters: [Converter] = [Converter(label: "Fahrenheit to Celcius", inputUnit: "°F", outputUnit: "°C"), Converter(label: "Celcius to Fahrenheit", inputUnit: "°C", outputUnit: "°F"), Converter(label: "Miles to Kilometers", inputUnit: "mi", outputUnit: "km"), Converter(label: "Kilometers to Miles", inputUnit: "km", outputUnit: "mi")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputText.text = converters[0].inputUnit
        outputText.text = converters[0].outputUnit
        // Do any additional setup after loading the view, typically from a nib
        
    }
    
    
    @IBAction func convertUnit(_ sender: Any) {
        let alert = UIAlertController(title: "Converter", message: "Choose Converter", preferredStyle: UIAlertController.Style.actionSheet)
        
        alert.addAction(UIAlertAction(title: converters[0].label, style: UIAlertAction.Style.default, handler: {
            (alertAction)-> Void in
            
            self.inputText.text = self.converters[0].inputUnit
            self.outputText.text = self.converters[0].outputUnit
            
        }))
        
        alert.addAction(UIAlertAction(title: converters[1].label, style: UIAlertAction.Style.default, handler: {
            (alertAction)-> Void in
            
            self.inputText.text = self.converters[1].inputUnit
            self.outputText.text = self.converters[1].outputUnit
            
        }))
        
        alert.addAction(UIAlertAction(title: converters[2].label, style: UIAlertAction.Style.default, handler: {
            (alertAction)-> Void in
            
            self.inputText.text = self.converters[2].inputUnit
            self.outputText.text = self.converters[2].outputUnit
            
        }))
        
        alert.addAction(UIAlertAction(title: converters[3].label, style: UIAlertAction.Style.default, handler: {
            (alertAction)-> Void in
            
            self.inputText.text = self.converters[3].inputUnit
            self.outputText.text = self.converters[3].outputUnit
            
        }))
        
        self.present(alert, animated: true, completion: nil)
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

