//
//  infoVC.swift
//  Table metod 2
//
//  Created by Süleyman Ekici on 10.08.2018.
//  Copyright © 2018 Süleyman Ekici. All rights reserved.
//

import UIKit

class infoVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    
    var selectedSimpson = Simpson()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson.name
        occupationLabel.text = selectedSimpson.occupation
        imageView.image = selectedSimpson.image
      
    }

    

}
