//
//  ViewController.swift
//  pick&chooseBackGround
//
//  Created by Apple on 28/02/18.
//  Copyright © 2018 Vignesh. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, ChooseColorDelegate {
   
    // Outlets:
    @IBOutlet weak var colorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func chooseScreenBackground(color: UIColor, withName name: String) {
        view.backgroundColor = color
        colorLabel.text = name
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorID" {
            guard let pickColor = segue.destination as? PickColorsVC else {return}
            pickColor.delegate = self
        }
    }

}

