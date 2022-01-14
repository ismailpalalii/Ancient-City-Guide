//
//  ViewController.swift
//  AncientCityGuide
//
//  Created by ismail palali on 14.01.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var cityName = [String]()
    var selectedCityName = ""
    var selectedCityImage = UIImage()
    var cityImage = [UIImage]()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        cityName.append("Aigai")
        cityName.append("Aizanoi")
        cityName.append("Aktoprak")
        cityName.append("Alacahoyuk")
        cityName.append("Anavarza")
        cityName.append("Ani")
        
        cityImage.append(UIImage(named: "aigai.jpg")!)
        cityImage.append(UIImage(named: "aizanoi.jpg")!)
        cityImage.append(UIImage(named: "aktoprak.jpg")!)
        cityImage.append(UIImage(named: "alacahoyuk.jpg")!)
        cityImage.append(UIImage(named: "anavarza.jpg")!)
        cityImage.append(UIImage(named: "ani.jpg")!)
        
        navigationItem.title = "Ancient City Guide"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cityName[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityName.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCityName = cityName[indexPath.row]
        selectedCityImage = cityImage[indexPath.row]
        
        performSegue(withIdentifier: "toDetailsScreen", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsScreen" {
            let destinationVC = segue.destination as! DetailViewController
            
            destinationVC.images = selectedCityImage
            destinationVC.cityName = selectedCityName
        }
    }
    
}

