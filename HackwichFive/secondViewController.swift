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
        if currentIndex < myFavoriteShows.count
        {
            item2buttomLabel.text = "\(myFavoriteShows[currentIndex])"
            buttonLabel2.setTitle("Next", for: UIControl.State.normal)
            currentIndex += 1
        }
        else
        {
            print("button has been disabled")
            (buttonLabel2!).isEnabled=false
        }
    }
    
}
