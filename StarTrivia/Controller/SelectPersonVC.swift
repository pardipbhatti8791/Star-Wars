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
    
    @IBOutlet weak var homeWorldBtn: UIButton!
    @IBOutlet weak var vehiclesBtn: UIButton!
    @IBOutlet weak var starshipsBtn: UIButton!
    @IBOutlet weak var filmsBtn: UIButton!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var randomButton: BlackBGButton!
    
    
    var personApi = PersonApi()
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        spinner.isHidden = true
    }
    
    @IBAction func randomTapped(_ sender: Any) {
        
        spinner.isHidden = false
        spinner.startAnimating()
        randomButton.isEnabled = false
        
        let random = Int.random(in: 1 ... 87)
        personApi.getRandomPersonAlamoFireAndCodeable(id: random) { (person) in
            
            self.spinner.stopAnimating()
            self.spinner.isHidden = true
            self.randomButton.isEnabled = true
            
            if let person = person {
                self.setupView(person: person)
                self.person = person
            }
        }
    }
    
    func setupView(person: Person) {
        
        nameLabel.text = person.name
        heightLabel.text = person.height
        massLabel.text = person.mass
        hariLabel.text = person.hair
        yearLabel.text = person.birthYear
        genderLabel.text = person.gender
        
        homeWorldBtn.isEnabled = !person.homeworldUrl.isEmpty
        vehiclesBtn.isEnabled = !person.vehicleUrls.isEmpty
        starshipsBtn.isEnabled = !person.starShipUrls.isEmpty
        filmsBtn.isEnabled = !person.filmUrls.isEmpty
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if var destination = segue.destination as? PersonProtocol {
            destination.person = person
        }
        
    }
    
}

protocol PersonProtocol {
    var person: Person! {get set}
}




