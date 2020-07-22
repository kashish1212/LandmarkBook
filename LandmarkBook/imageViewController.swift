//
//  imageViewController.swift
//  LandmarkBook
//
//  Created by Kashish Bhutani on 11/25/19.
//  Copyright © 2019 Kashish Bhutani. All rights reserved.
//

import UIKit

class imageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var landmarkLabel: UILabel!
    
    var selectedLandmarkName = ""
    var selectedLanmarkImage = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedLanmarkImage
        
        
    }
    


}
