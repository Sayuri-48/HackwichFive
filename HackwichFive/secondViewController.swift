//
//  secondViewController.swift
//  HackwichFive
//
//  Created by binh phan on 9/28/23.
//

import UIKit

class secondViewController: UIViewController {
    
    var currentIndex = 0
    
    @IBOutlet weak var item2topLabel: UILabel!
    
    @IBOutlet weak var item2buttomLabel: UILabel!
    
    @IBOutlet weak var buttonLabel2: UIButton!
    
    
    var myFavoriteShows: [String] = [""]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        item2topLabel.text = "🪐" + " My Favorite \n StarWars Series:"
        
        myFavoriteShows = ["Clone Wars", "Bad Batch", "Mandalorian", "Episode III", "Andor"]
        
        buttonLabel2.setTitle("See My Favorite StarWars Series", for: UIControl.State.normal)
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func button2Pressed(_ sender: Any)
    {
        //comment #1 Set the if conditional statement to detect if the currentIndex is within the counts of elements in Array.
        if currentIndex < myFavoriteShows.count
        {
        //comment #2 Change the text in item2bottomLabel to the element in Array refered from currentIndex.
            item2buttomLabel.text = "\(myFavoriteShows[currentIndex])"
            
        //comment #3 Change the text in buttonLabel to "Next".
            buttonLabel2.setTitle("Next", for: UIControl.State.normal)
            
        //comment #4 Add 1 and change the currentIndex everytime you press the button, then it shows the next element in Array when you press button next time.
            currentIndex += 1
        }
        else
        {
        //comment #5 Print the text in console to make sure else is excuted.
            print("button has been disabled")
            
        //comment #6 Disable the button.
            (buttonLabel2!).isEnabled=false
        }
    }
    
}
