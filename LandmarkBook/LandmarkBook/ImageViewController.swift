//
//  ImageViewController.swift
//  LandmarkBook
//
//  Created by Eyüp Fidan on 17.12.2021.
//

import UIKit

class ImageViewController: UIViewController {

  
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelView.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
    }
    


}
