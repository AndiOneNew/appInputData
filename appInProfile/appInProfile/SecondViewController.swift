//
//  SecondViewController.swift
//  appInProfile
//
//  Created by Илья Новиков on 26.07.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var userNameLabel = ""
    @IBOutlet weak var ageLabek: UILabel!
    var userAgeLabel = ""
    @IBOutlet weak var cityLabel: UILabel!
    var userCityLabel = ""
    @IBOutlet weak var emailLabel: UILabel!
    var userEmailLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        nameLabel.text = userNameLabel
        ageLabek.text = userAgeLabel
        cityLabel.text = userCityLabel
        emailLabel.text = userEmailLabel
    
    }

}
