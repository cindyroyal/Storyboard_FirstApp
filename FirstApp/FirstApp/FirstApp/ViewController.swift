//
//  ViewController.swift
//  FirstApp
//
//  Created by Royal, Cindy L on 2/26/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    
   
    @IBOutlet weak var myName: UITextField!
    
    @IBOutlet weak var studentStatus: UILabel!
    
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBAction func selectStudent(_ sender: Any) {
        
        if (sender as AnyObject).isOn {
               studentStatus.text = "student"
               } else {
               studentStatus.text = "non-student"
               }
    }
    
    
    @IBAction func myRating(_ sender: UISlider) {
        let rating = Int(sender.value)
           ratingLabel.text = "Your Rating: \(rating)"
        
    }
    
    
    @IBAction func myButton(_ sender: Any) {
        
        let name = myName.text!
        myLabel.text = "Hello \(name)"

        myName.resignFirstResponder()
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //myLabel.text = "Cindy"
    }


}

