//
//  ViewController.swift
//  Calculator
//
//  Created by Jamie Fenton on 07/12/2021.
//

import UIKit

// Calculator that can calculate running totals and perform mean and median on a set of numbers.


// lastButton changes to whichever function (+,-,/,x) was last pressed to allow that operation to be performed
var lastButton = ""
// current number is a string which keeps track of the number currently being typed into the calculator
var currentNumber = ""
// total is a variable which keeps track of the running total if more than one mathmatical operation is performed on the current calculation. The total and current number are the two variables that will be used to calculate the result when the equals button is selected.
var total = "0"
// Changes to true if the mean is to be calculated
var mean = false
// Changes to true if the median is to be calulated
var median = false
// Array to store the mean and median numbers
var array = [Float]()


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Define mainScreen which will display the results and current number
    @IBOutlet weak var mainScreen: UILabel!
    // Define infoLabel which informs the user when the mean or median is being calculated
    @IBOutlet weak var infoLabel: UILabel!
    
    // Display the number pressed on the main screen and add the number in the current number string. If the last button pressed was equals start a new current number
    
    @IBAction func button1(_ sender: UIButton) {
        if lastButton == "equals"{
            currentNumber = "1"
            mainScreen.text = currentNumber
            print("Hello")
        }
        else{
        currentNumber = currentNumber + "1"
        mainScreen.text = currentNumber
        print(lastButton)}
    }
    
    @IBAction func button2(_ sender: UIButton) {
        if lastButton == "equals"{
            currentNumber = "2"
            mainScreen.text = currentNumber
        }
        else{
        currentNumber = currentNumber + "2"
        mainScreen.text = currentNumber}
    }
    
    @IBAction func button3(_ sender: UIButton) {
        if lastButton == "equals"{
            currentNumber = "3"
            mainScreen.text = currentNumber
        }
        else{
        currentNumber = currentNumber + "3"
        mainScreen.text = currentNumber
        }
    }
    
    @IBAction func button4(_ sender: UIButton) {
        if lastButton == "equals"{
            currentNumber = "4"
            mainScreen.text = currentNumber
        }
        else{
        currentNumber = currentNumber + "4"
        mainScreen.text = currentNumber
        }
    }
    
    @IBAction func button5(_ sender: UIButton) {
        if lastButton == "equals"{
            currentNumber = "5"
            mainScreen.text = currentNumber
        }
        else{
        currentNumber = currentNumber + "5"
        mainScreen.text = currentNumber
        }
    }
    
    @IBAction func button6(_ sender: UIButton) {
        if lastButton == "equals"{
            currentNumber = "6"
            mainScreen.text = currentNumber
        }
        else{
        currentNumber = currentNumber + "6"
        mainScreen.text = currentNumber
        }
    }
    
    @IBAction func button7(_ sender: UIButton) {
        if lastButton == "equals"{
            currentNumber = "7"
            mainScreen.text = currentNumber
        }
        else{
        currentNumber = currentNumber + "7"
        mainScreen.text = currentNumber
        }
    }
    
    @IBAction func button8(_ sender: UIButton) {
        if lastButton == "equals"{
            currentNumber = "8"
            mainScreen.text = currentNumber
        }
        else{
        currentNumber = currentNumber + "8"
        mainScreen.text = currentNumber
        }
    }
    
    @IBAction func button9(_ sender: UIButton) {
        if lastButton == "equals"{
            currentNumber = "9"
            mainScreen.text = currentNumber
        }
        else{
        currentNumber = currentNumber + "9"
        mainScreen.text = currentNumber
        }
    }
    @IBAction func button0(_ sender: UIButton) {
        if lastButton == "equals"{
            currentNumber = "0"
            mainScreen.text = currentNumber
        }
        else{
        currentNumber = currentNumber + "0"
        mainScreen.text = currentNumber
        }
    }
    
    @IBAction func buttonPoint(_ sender: UIButton) {
        if lastButton == "equals"{
            currentNumber = "."
            mainScreen.text = currentNumber
        }
        else{
        currentNumber = currentNumber + "."
        mainScreen.text = currentNumber
        }
    }
    
    // below are the mathmatical operation buttons, if no mathmatical operation button had been pressed previously log the current number as the total and clear the current number for the next number. But if a mathmatical button had been pressed previously perform the previous operation and store it as the total so that there can be a running total, it also displays this total so the user can see. At the end set lastButton to the button that was pressed. 
    
    
    @IBAction func buttonPlus(_ sender: Any) {
        // run this code if no other mathnatical operation has been selected before, take the nnumber on screen as the new total and set up for the next current number
        if lastButton == "" || lastButton == "equals"{
        mainScreen.text = "+"
        total = currentNumber
        currentNumber = ""
                }
        // If there has been a previous operation perform that operation and record a running total
        else if lastButton == "multiply"{
            // For example if the last button selected was multiply than multiply the total with the current number display the total and clear the current number
            total = Multiply(A: total, B: currentNumber)
            mainScreen.text = total + " +"
            currentNumber = ""
        }
        else if lastButton == "divide"{
            total = Divide(A: total, B: currentNumber)
            mainScreen.text = total + " +"
            currentNumber = ""
        }
        else if lastButton == "minus"{
            total = Subtract(A: total, B: currentNumber)
            mainScreen.text = total + " +"
            currentNumber = ""
        }
        else if lastButton == "add"{
            total = Adding(A: total, B: currentNumber)
            mainScreen.text = total + " +"
            currentNumber = ""
        }
        lastButton = "add"
        }
    
    
    @IBAction func buttonMinus(_ sender: UIButton) {
        if lastButton == "" || lastButton == "equals"{
        mainScreen.text = "-"
        total = currentNumber
        currentNumber = ""
        }
        else if lastButton == "multiply"{
            total = Multiply(A: total, B: currentNumber)
            mainScreen.text = total + " -"
            currentNumber = ""
        }
        else if lastButton == "divide"{
            total = Divide(A: total, B: currentNumber)
            mainScreen.text = total + " -"
            currentNumber = ""
        }
        else if lastButton == "add"{
            total = Adding(A: total, B: currentNumber)
            mainScreen.text = total + " -"
            currentNumber = ""
        }
        else if lastButton == "minus"{
            total = Subtract(A: total, B: currentNumber)
            mainScreen.text = total + " -"
            currentNumber = ""
        }
        lastButton = "minus"
    }
    
    
    @IBAction func buttonTimes(_ sender: UIButton) {
        if lastButton == "" || lastButton == "equals"{
        mainScreen.text = "x"
        total = currentNumber
        currentNumber = ""
        }
        
        else if lastButton == "add"{
            total = Adding(A: total, B: currentNumber)
            mainScreen.text = total + " x"
            currentNumber = ""
        }
        else if lastButton == "divide"{
            total = Divide(A: total, B: currentNumber)
            mainScreen.text = total + " x"
            currentNumber = ""
        }
        else if lastButton == "minus"{
            total = Subtract(A: total, B: currentNumber)
            mainScreen.text = total + " x"
            currentNumber = ""
        }
        else if lastButton == "multiply"{
            total = Multiply(A: total, B: currentNumber)
            mainScreen.text = total + " x"
            currentNumber = ""
        }
        lastButton = "multiply"
    }
    
    @IBAction func buttonDivide(_ sender: UIButton) {
        if lastButton == "" || lastButton == "equals"{
        mainScreen.text = "/"
        total = currentNumber
        currentNumber = ""
        }
        
        else if lastButton == "multiply"{
            total = Multiply(A: total, B: currentNumber)
            mainScreen.text = total + " /"
            currentNumber = ""
        }
        else if lastButton == "add"{
            total = Adding(A: total, B: currentNumber)
            mainScreen.text = total + " /"
            currentNumber = ""
        }
        else if lastButton == "minus"{
            total = Subtract(A: total, B: currentNumber)
            mainScreen.text = total + " /"
            currentNumber = ""
        }
        else if lastButton == "divide"{
            total = Divide(A: total, B: currentNumber)
            mainScreen.text = total + " /"
            currentNumber = ""
        }
        lastButton = "divide"
    }
    // Set clear button to reset all variables and user can start from scratch
    @IBAction func buttonClear(_ sender: UIButton) {
        mainScreen.text = ""
        currentNumber = ""
        lastButton = ""
        mean = false
        median = false
        infoLabel.text = ""
        array = []
    }
    // For mean and median buttons set the corresponding variable to true and display that the mean or median is being calculated on the infoLabel
    @IBAction func buttonMedian(_ sender: UIButton) {
        median = true
        infoLabel.text = "Median"
    }
    @IBAction func buttonMean(_ sender: UIButton) {
        mean = true
        infoLabel.text = "Mean"
    }
    // The space button is used to seperate numbers when calculating the mean or median. First use a guard to make sure the median or med is being calculated. If it is append the current number to the array to be used for calculating the median or mean. Use guard to check that the number is real first
    @IBAction func buttonSpace(_ sender: UIButton) {
        guard Float(currentNumber) != nil && median || mean == true else{
            mainScreen.text = "Med or mean only"
            currentNumber = ""
            return
        }
        array.append(Float(currentNumber)!)
        currentNumber = ""
        mainScreen.text = ""
    }
    // The negative button makes the current number negative after checking it isn't already negative
    @IBAction func buttonNegative(_ sender: UIButton) {
        if currentNumber.first != "-"{
        currentNumber = "-" + currentNumber
        mainScreen.text = currentNumber}
    }
    
    
    @IBAction func buttonEquals(_ sender: UIButton) {
        
        // If the median or mean is selected and the current number is real than use the functions to display median or mean. This means that even if the space wasn't selected after the last number the equals will apend the current number to the array and then calculate. Otherwise it will just calulate the mean or median from the array.
        
        if median == true{
            if Float(currentNumber) == nil {
                mainScreen.text = Median(input: array)
            }
            else{
            array.append(Float(currentNumber)!)
            mainScreen.text = Median(input: array)
            }}
        
        else if mean == true{
            if Float(currentNumber) == nil {
                mainScreen.text = Mean(Input: array)
            }
            else{
            array.append(Float(currentNumber)!)
            mainScreen.text = Mean(Input: array)
            }}
        else{
            // Equals will perform the last calculation with the total and current number depending on what the last button was and display it on the mainscreen. From here the user can carry on using this number or start typing a new one

        switch lastButton{
        
        case "add": mainScreen.text = Adding(A: total, B: currentNumber)
        case "minus": mainScreen.text = Subtract(A: total, B: currentNumber)
        case "multiply": mainScreen.text = Multiply(A: total, B: currentNumber)
        case "divide": mainScreen.text = Divide(A: total, B: currentNumber)
        default: mainScreen.text = currentNumber

        }}
        // reset the mean and median values and array so that it can be performed again. But don't clear current or total so that users can carry on performing calulations on the final result. Set last button to equals so that if a number is selected directly after it starts a new number instead of adding from the last selected number
        
        median = false
        mean = false
        infoLabel.text = ""
        array = []
        lastButton = "equals"
        
    }
    
}

// Functions for taking in the two string values, performing the calculation on them and outputting the resultant string value. Uses a guard to make sure that each input can actually be assinged to a Float value. This will stop mistakes such such as 1..2 instead of 1.2 to being inputted. In each case convert string values (If real) to Float values. Float chosen instead of Double as Double percision wasn't deemed necessary.

func Adding(A: String, B: String) -> String{
    
    let intOne = Float(A)
    let intTwo = Float(B)
    
    guard intOne != nil && intTwo != nil else{
        return "Unrecognised num"
    }
    
    let total = intOne! + intTwo!
    return String(total)
}

func Multiply(A: String, B: String) -> String{
    
    let intOne = Float(A)
    let intTwo = Float(B)
    
    guard intOne != nil && intTwo != nil else{
        return "Unrecognised num"
    }
    
    let total = intOne! * intTwo!
    return String(total)
}

func Divide(A: String, B: String) -> String{
    
    let intOne = Float(A)
    let intTwo = Float(B)
    
    guard intOne != nil && intTwo != nil else{
        return "Unrecognised num"
    }
    
    let total = intOne! / intTwo!
    return String(total)
}

func Subtract(A: String, B: String) -> String{
    
    let intOne = Float(A)
    let intTwo = Float(B)
    
    guard intOne != nil && intTwo != nil else{
        return "Unrecognised num"
    }
    
    let total = intOne! - intTwo!
    return String(total)
}

// For mean collect total of adding all values of array and then divide by the number in array.

func Mean(Input: [Float]) -> String{
    var totalNum = Float(0)
    for num in Input{
        totalNum += num
    }
    return String(totalNum/Float(Input.count))
}

// For median first sort the array, then if there is an odd number of elements find the middle value, if there is an even number find the mid value between the two middle elements.

func Median(input: [Float]) -> String {
    var sortedArray = input
    sortedArray.sort()
    
    if sortedArray.count % 2 == 0{
        let median = (sortedArray[(sortedArray.count)/2] + sortedArray[(sortedArray.count)/2 - 1])/2
        return String(median)
    }
    else {
        return String(sortedArray[((sortedArray.count - 1)/2)])
    }
}
