//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Eyüp Fidan on 17.12.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var landmarkName = [String] ()
    var landmarkImages = [UIImage]()
    var chosenLandmarkNames = ""
    var chosenLandmarkImages = UIImage()


    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        //Landmark book data
        landmarkName.append("Colleseum")
        landmarkName.append("Greatwall")
        landmarkName.append("Kremlin")
        landmarkName.append("Stonehenge")
        landmarkName.append("Tac Mahal")
        
        
        landmarkImages.append(UIImage(named: "colleseum.jpeg")!)
        landmarkImages.append(UIImage(named: "great-wall.jpeg")!)
        landmarkImages.append(UIImage(named: "kremlin.jpeg")!)
        landmarkImages.append(UIImage(named: "stonehenge.jpeg")!)
        landmarkImages.append(UIImage(named: "tac-mahal.jpeg")!)
        

    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landmarkName.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text =  landmarkName[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkName.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenLandmarkNames = landmarkName[indexPath.row]
        chosenLandmarkImages = landmarkImages[indexPath.row]
        performSegue(withIdentifier: "toImageViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageViewController" {
            let destinationVC = segue.destination as! ImageViewController
            destinationVC.selectedLandmarkImage = chosenLandmarkImages
            destinationVC.selectedLandmarkName = chosenLandmarkNames
        }
    }
    

}

