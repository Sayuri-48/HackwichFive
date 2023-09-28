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
    
    var favoriteFoodsArray: [String] = [""]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topLabel.text = "My Favorite Foods:"
        
        favoriteFoodsArray = ["Avocado", "Pasta", "Mentaiko", "Sashimi", "Tart"]
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonPressed(_ sender: Any)
    {
        bottomLabel.text = "\(favoriteFoodsArray[0])"
    }
    
    

}

