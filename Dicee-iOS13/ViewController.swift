//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IB Outlet or image builder outlet for image
    // of the dice on the left side in the screen
    
    // the name that we have created for this IBOutlet
    // variable will be shown in the story board editor
    // view in the connections tag
    @IBOutlet weak var diceImageView1: UIImageView!
    
    // the code below is used to create an IBOutlet variable
    // for the second image of the dice shown in the story board
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    // the code below is used to create an array for getting the list
    // of strings having the name of the images of dice that we want to
    // show to the user
    
    // the code below is used to create a constant of type array
    
    // the keyword let is used to create constants in swift
    let diceImageArray : [String] = ["DiceOne", "DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]
    
    // the code below is to use the var keyword for creating a variable for getting the
    // value of left dice when the roll button is pressed
    var leftDiceNumber = 0
    
    // the code below is to use the var keyword for creating a variable for getting the
    // value of the right dice when the roll button is pressed
    var rightDiceNumber = 5
    
    
    // the below method will work when when the view or ui loads
    // up in the app
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // the code below is used to show the image of dice
        // showing the six number when the view or the ui loads up in the app
        
        // the code below works in the following way
        // who.what = value
        // i.e. who's what property we need to change to what value
        
        // so in our case we need to change the image value of the diceImageView1 property to the dice showing six as value when the view/ ui loads up
        
//        diceImageView1.image = UIImage(named: "DiceSix")   // here we are using the UIImage() object and passing the value of named arribute the name of the image that we want to show when the UI / view loads up
        
        
        // the code below is used to change the alpha property of the diceImageView1 to 0.5 to make it transparent
       // diceImageView1.alpha = 0.5
        
        
        
        // the code below is used to change the image of the second dice to DiceTwo image when the view / UI loads up
//        diceImageView2.image = UIImage(named: "DiceTwo") // here we are using the UIImage() object and passing the value of named arribute the name of the image that we want to show when the UI / view loads up
    }

    
    
    // the code below is used to generate / create a method for handling the on tap when the user clicks the roll button on the screen
        
    // the Method below used the IBAction or the interface builder action
    // annotation
    @IBAction func rollButtonOnPressedHandler(_ sender: UIButton) {
        // the below line of code is for debugging purpose to print
        // the button got pressed in the debug console when the user
        // pressed the roll button
        print("Roll Button Got Pressed")

        // the code below is used to change the left and the right dice
        // to show the diceFour when the roll button is pressed
//        diceImageView1.image = UIImage(named: "DiceFour")
//        diceImageView2.image = UIImage(named: "DiceFour")
        
        
        // the code below is to use the image instance of the diceImageView1
        // property for getting the image that we want to show to the user when the user presses the roll button
        
        // the code below is used to pass the value of array at index 5 to the named attribute for showing the image of dice 6 when the
        // user presses the roll button
//        diceImageView1.image = UIImage(named: leftDiceImageArray[5])
        
        // the code below is used to get the value of the dice that is present at the value stored in the leftDiceNumber variable when
        // the user clicks the roll button
        diceImageView1.image = UIImage(named: diceImageArray[leftDiceNumber])
        
        
        // the code below is used to set the value of image attribute of the diceImageView2 property to the image name
        // at index rightDiceNumber when the user presses the roll button
        diceImageView2.image = UIImage(named: diceImageArray[rightDiceNumber])
        
        // the code below is used to increase the value of leftDiceNumber by 1
//        leftDiceNumber = leftDiceNumber + 1
        
        // the above line of code can also be written using the shorthand operator
        leftDiceNumber += 1
        
        // the code below is used to decrease the value of rightDiceNumber by 1
//        rightDiceNumber = rightDiceNumber - 1
        
        
        // the above line of code can also be written using the shorthand operator
        rightDiceNumber -= 1
        
    }
    
}

