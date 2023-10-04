//
//  ViewController.swift
//  HackwichFive
//
//  Created by binh phan on 9/28/23.
//

import UIKit

class ViewController: UIViewController {

    var currentIndex = 0
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    var favoriteFoodsArray: [String] = [""]
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        topLabel.text = "😋" + " My Favorite Foods:"
        
        favoriteFoodsArray = ["Avocado", "Pasta", "Mentaiko", "Sashimi", "Tart"]
        
        buttonLabel.setTitle("See My Favorite Foods", for: UIControl.State.normal)
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonPressed(_ sender: Any)
    {
        //comment #1 Set the if conditional statement to detect if the currentIndex is within the counts of elements in Array.
        if currentIndex < favoriteFoodsArray.count
        {
            
        //comment #2 Change the text in bottomLabel to the element in Array refered from currentIndex.
            bottomLabel.text = "\(favoriteFoodsArray[currentIndex])"
  
        //comment #3 Change the text in buttonLabel to "Next".
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
      
        //comment #4 Add 1 and change the currentIndex everytime you press the button, then it shows the next element in Array when you press button next time.
            currentIndex += 1
        }
        else
        {
        
        //comment #5 Print the text in console to make sure else is excuted.
            print("button has been disabled")
        
        //comment #6 Disable the button.
            (buttonLabel!).isEnabled=false
        }
    }
}

