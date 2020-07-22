//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Kashish Bhutani on 11/25/19.
//  Copyright © 2019 Kashish Bhutani. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var chosenLandmarkNames = ""
    var chosenLandmarkImages = UIImage()
    

    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        
        //lankark
        landmarkNames.append("Colosseum")
        landmarkNames.append("Great Wall of China")
        landmarkNames.append("Statue of Liberty")
        landmarkNames.append("Stonehenge")
        landmarkNames.append("Taj Mahal")
  
        
       
        
        landmarkImages.append(UIImage(named: "coll.jpg")!)
        landmarkImages.append(UIImage(named: "great wall.jpg")!)
        landmarkImages.append(UIImage(named: "liberty.jpg")!)
        landmarkImages.append(UIImage(named: "stone.jpg")!)
        landmarkImages.append(UIImage(named: "taj.jpg")!)
        
        navigationItem.title = "Landmark Book"
        
        
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenLandmarkNames = landmarkNames[indexPath.row]
        chosenLandmarkImages = landmarkImages[indexPath.row]
        
        performSegue(withIdentifier: "toImageViewController", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageViewController" {
            let destinationVC = segue.destination as! imageViewController
            destinationVC.selectedLandmarkName = chosenLandmarkNames
            destinationVC.selectedLanmarkImage = chosenLandmarkImages
        }
    }

}

