//
//  PickColorsVC.swift
//  pick&chooseBackGround
//
//  Created by Apple on 28/02/18.
//  Copyright © 2018 Vignesh. All rights reserved.
//

import UIKit

class PickColorsVC: UIViewController {

    // Delegate
    var delegate: ChooseColorDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func colorsButtonpressed(_ sender: UIButton) {
        delegate?.chooseScreenBackground(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
        self.navigationController?.popViewController(animated: true)
    }

    

    

}
