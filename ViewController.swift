//  ViewController.swift
//  WarCardGame
//  Created by Ronak

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var Leftimageview: UIImageView!
    
    @IBOutlet weak var Rightimageview: UIImageView!
    
    @IBOutlet weak var Leftscorelabel: UILabel!
    
    @IBOutlet weak var Rightscorelabel: UILabel!
    
    var leftscore = 0
    var rightscore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    
    @IBAction func DealTapped(_ sender: Any) {
        
        // Radomize some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        
        Leftimageview.image = UIImage(named: "card\(leftNumber)")
        
        Rightimageview.image = UIImage(named: "card\(rightNumber)")
        
        // Compare Numbers
        if leftNumber > rightNumber {
            
            //left side wins
            leftscore += 1
            
            Leftscorelabel.text = String(leftscore)
        }
        else if leftNumber < rightNumber {
            
            //right side wins
            rightscore += 1
            
            Rightscorelabel.text = String(rightscore)
            
        }
        else {
            //Tie
        }
        
    }
    

}

