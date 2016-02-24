//
//  ViewController.swift
//  Nishita IOS Calculator
//
//  Created by Nishita Tanwar on 2/11/16.
//  Copyright © 2016 Nishita Tanwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isTypingNumber = false
    var firstNumber:Float!
    var secondNumber:Float!
    var operation = ""
    
    @IBOutlet weak var calculatorDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNumber = 0
        secondNumber = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //To enter numbers for operations
    @IBAction func numberTapped(sender: AnyObject) {
        let number = sender.currentTitle
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else{
            calculatorDisplay.text = number
            isTypingNumber = true
        }
        
    }
    @IBAction func numberTapped1(sender: AnyObject) {
        let number = sender.currentTitle
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else{
            calculatorDisplay.text = number
            isTypingNumber = true
        }
        
    }
    @IBAction func numberTapped3(sender: AnyObject) {
        let number = sender.currentTitle
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else{
            calculatorDisplay.text = number
            isTypingNumber = true
        }
    }
    @IBAction func numberTapped4(sender: AnyObject) {
        let number = sender.currentTitle
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else{
            calculatorDisplay.text = number
            isTypingNumber = true
        }
    }
    @IBAction func numberTapped5(sender: AnyObject) {
        let number = sender.currentTitle
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else{
            calculatorDisplay.text = number
            isTypingNumber = true
        }
    }
    @IBAction func numberTapped6(sender: AnyObject) {
        let number = sender.currentTitle
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else{
            calculatorDisplay.text = number
            isTypingNumber = true
        }
    }
    @IBAction func numberTapped7(sender: AnyObject) {
        let number = sender.currentTitle
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else{
            calculatorDisplay.text = number
            isTypingNumber = true
        }
    }
    @IBAction func numberTapped8(sender: AnyObject) {
        let number = sender.currentTitle
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else{
            calculatorDisplay.text = number
            isTypingNumber = true
        }
    }
    @IBAction func numberTapped9(sender: AnyObject) {
        let number = sender.currentTitle
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else{
            calculatorDisplay.text = number
            isTypingNumber = true
        }
    }
    @IBAction func numberTapped0(sender: AnyObject) {
        let number = sender.currentTitle
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else{
            calculatorDisplay.text = number
            isTypingNumber = true
        }
    }
    // To convert number to decimal number
    @IBAction func dotTapped(sender: AnyObject) {
        let digit = sender.currentTitle!
        if isTypingNumber && digit != "." || (digit == "." && calculatorDisplay.text!.rangeOfString(".") == nil){
            calculatorDisplay.text = calculatorDisplay.text! + digit!
        } else {
            if digit == "." {
                calculatorDisplay.text = "0" + digit!
            } else {
                calculatorDisplay.text = digit
            }
            isTypingNumber = true
        }
    }
    //Mathematical operations button
    @IBAction func minusTapped(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = Float(calculatorDisplay.text!)
        operation = sender.currentTitle!!
    }
    @IBAction func plusTapped(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = Float(calculatorDisplay.text!)
        operation = sender.currentTitle!!
        
    }
    @IBAction func multiplyTapped(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = Float(calculatorDisplay.text!)
        operation = sender.currentTitle!!
        
    }
    @IBAction func divideTapped(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = Float(calculatorDisplay.text!)
        operation = sender.currentTitle!!
        
    }
    @IBAction func moduloTapped(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = Float(calculatorDisplay.text!)
        operation = sender.currentTitle!!
        
    }
    @IBAction func clearTapped(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = 0
        secondNumber = 0
        calculatorDisplay.text = String(0)
    }
    @IBAction func sqrtTapped(sender: AnyObject){
        isTypingNumber = false
        firstNumber = Float(calculatorDisplay.text!)
        var result1:Float?
        result1 = sqrt(firstNumber!)
        operation = sender.currentTitle!!
        calculatorDisplay.text = String(result1!)
    }
    @IBAction func sinTapped(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = Float(calculatorDisplay.text!)
        var result1:Float?
        result1 = sin(firstNumber!)
        operation = sender.currentTitle!!
        calculatorDisplay.text = String(result1!)
    }
    @IBAction func cosTapped(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = Float(calculatorDisplay.text!)
        var result1:Float?
        result1 = cos(firstNumber!)
        operation = sender.currentTitle!!
        calculatorDisplay.text = String(result1!)
    }
    //To evaluate expression of two decimal numbers
    @IBAction func equalTapped(sender: AnyObject) {
        isTypingNumber = false
        var result:Float?
        result = 0
        secondNumber = Float(calculatorDisplay.text!)
        if operation == "+"{
            result = firstNumber! + secondNumber!
        } else if operation == "-"{
            result = firstNumber! - secondNumber!
        } else if operation == "*"{
            result = firstNumber! * secondNumber!
        } else if operation == "/"{
            result = firstNumber! / secondNumber!
        } else if operation == "%"{
            result = firstNumber! % secondNumber!
        } else if operation == "sin" {
            // evaluated on pressing sqrt button itself no need of pressing equal
        } else if operation == "cos" {
            // evaluated on pressing sqrt button itself no need of pressing equal
        } else if operation == "sqrt"{
            // evaluated on pressing sqrt button itself no need of pressing equal
        }
        calculatorDisplay.text = "\(result!)"
        
    }
    
}


