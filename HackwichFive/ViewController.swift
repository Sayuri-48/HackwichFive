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
        if currentIndex < favoriteFoodsArray.count
        {
            bottomLabel.text = "\(favoriteFoodsArray[currentIndex])"
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            currentIndex += 1
        }
        else
        {
            print("button has been disabled")
            (buttonLabel!).isEnabled=false
        }
    }
}

