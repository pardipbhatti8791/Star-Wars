//
//  HomeWorldVC.swift
//  StarTrivia
//
//  Created by Pardip Bhatti on 09/06/19.
//  Copyright © 2019 Pardip Bhatti. All rights reserved.
//

import UIKit

class HomeWorldVC: UIViewController, PersonProtocol {
    
    var person: Person!
    let api = HomeworldApi()

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var climateLble: UILabel!
    @IBOutlet weak var terrainLbl: UILabel!
    @IBOutlet weak var populationLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(person.name)
        api.getHomeword(url: person.homeworldUrl) { (homeworld) in
            if let homeworld = homeworld {
                self.setupUI(homeworld: homeworld)
            }
        }
    }
    
    func setupUI(homeworld: Homeworld) {
        nameLbl.text = homeworld.name
        climateLble.text = homeworld.climate
        terrainLbl.text = homeworld.terrain
        populationLbl.text = homeworld.population
    }


}
