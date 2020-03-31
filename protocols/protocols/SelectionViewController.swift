//
//  SelectionViewController.swift
//  protocols
//
//  Created by Deftsoft on 25/07/19.
//  Copyright © 2019 Deftsoft. All rights reserved.
//

import UIKit

protocol SelectionPotocol {
    func didChoose(image:UIImage,name:String,color:UIColor)
}
class SelectionViewController: UIViewController {
   
     var selectionDelegate:SelectionPotocol!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    @IBAction func imperialButtonTapped(_ sender: UIButton) {
        
        selectionDelegate.didChoose(image: #imageLiteral(resourceName: "darth VADER"), name: "Darth Vader", color: UIColor.red)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func rebelButtonTapped(_ sender: UIButton) {
         selectionDelegate.didChoose(image: #imageLiteral(resourceName: "luke"), name: "Sky Walker", color: UIColor.green)
        dismiss(animated: true, completion: nil)
    }
    
 

}
