//
//  ViewController.swift
//  StarTrivia
//
//  Created by Pardip Bhatti on 25/04/19.
//  Copyright © 2019 Pardip Bhatti. All rights reserved.
//

import UIKit

class SelectPersonVC: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var hariLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    

    var personApi = PersonApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func randomTapped(_ sender: Any) {
        let random = Int.random(in: 1 ... 87)
        personApi.getRandomPersonUrlSesion(id: random) { (person) in
            if let person = person {
                print(person.name)
                self.nameLabel.text = person.name
                self.heightLabel.text = person.height
                self.massLabel.text = person.mass
                self.hariLabel.text = person.hair
                self.yearLabel.text = person.birthYear
                self.genderLabel.text = person.gender
            }
        }
    }
    
}

