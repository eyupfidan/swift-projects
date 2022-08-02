//
//  ImageViewContreller.swift
//  LandmarkBook
//
//  Created by Eyüp Fidan on 17.12.2021.
//

import UIKit

class ImageViewContreller: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    
    var selectedLandmardName = ""
    var selectedLandmarkImage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelView.text = selectedLandmardName
        imageView.image = selectedLandmarkImage
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
