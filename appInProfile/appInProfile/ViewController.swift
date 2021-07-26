//
//  ViewController.swift
//  appInProfile
//
//  Created by Илья Новиков on 26.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameUserTF: UITextField!
    
    @IBOutlet weak var ageUserTF: UITextField!
    
    @IBOutlet weak var cityUserTF: UITextField!
    
    @IBOutlet weak var emailUserTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//    Описание тапа,для скрывания клавиатуры
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.keyboardDismiss))
        view.addGestureRecognizer(tap)
        
    }
    
//    Функция для скрывания клавиатуры по тапу в любом месте программы
    @objc func keyboardDismiss () {
        view.endEditing(true)
    }
    
    @IBAction func pushToSecondVC(_ sender: UIButton) {
                
        let dataUser = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        dataUser.userNameLabel =  nameUserTF.text ?? ""
        dataUser.userAgeLabel = ageUserTF.text ?? ""
        dataUser.userCityLabel = cityUserTF.text ?? ""
        dataUser.userEmailLabel = emailUserTF.text ?? ""
        navigationController?.pushViewController(dataUser, animated: true)
    }
    
}

