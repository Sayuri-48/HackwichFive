//
//  secondViewController.swift
//  HackwichFive
//
//  Created by binh phan on 9/28/23.
//

import UIKit

class secondViewController: UIViewController {
    
    
    @IBOutlet weak var item2topLabel: UILabel!
    
    @IBOutlet weak var item2buttomLabel: UILabel!
    
    var myFavoriteShows: [String] = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        item2topLabel.text = "My Favorite Shows:"
        
        myFavoriteShows = ["One Piece", "SATC", "Star Wars", "Sherlock", "GOT"]
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func item2buttonPressed(_ sender: Any)
    {
        item2buttomLabel.text = "\(myFavoriteShows[2])"
    }
    
}
