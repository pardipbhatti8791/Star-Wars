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

    override func viewDidLoad() {
        super.viewDidLoad()

        print(person.name)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
