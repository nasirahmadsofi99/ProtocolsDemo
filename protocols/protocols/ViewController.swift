//
//  ViewController.swift
//  protocols
//
//  Created by Deftsoft on 25/07/19.
//  Copyright © 2019 Deftsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var starImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseYourSideButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        chooseYourSideButton.layer.cornerRadius = 10
        chooseYourSideButton.clipsToBounds = true
    }

    @IBAction func chooseYourButtonAction(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SelectionViewController") as! SelectionViewController
        vc.selectionDelegate = self
       present(vc, animated: true, completion: nil)
    }
    
}
extension ViewController:SelectionPotocol {
    func didChoose(image: UIImage, name: String, color: UIColor) {
      starImage.image = image
      nameLabel.text = name
      view.backgroundColor = color
        
    }
    
    
}
