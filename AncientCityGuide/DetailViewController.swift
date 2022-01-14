//
//  DetailViewController.swift
//  AncientCityGuide
//
//  Created by ismail palali on 14.01.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
   
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var cityImage: UIImageView!
    
    var cityNames = ""
    var images = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityName.text = cityNames
        cityImage.image = images
    }
    
}
