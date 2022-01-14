//
//  DetailViewController.swift
//  AncientCityGuide
//
//  Created by ismail palali on 14.01.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var cityImage: UIImageView!
    
    var cityName = ""
    var images = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityTextField.text = cityName
        cityImage.image = images
    }
    
}
