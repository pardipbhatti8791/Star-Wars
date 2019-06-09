//
//  Constants.swift
//  StarTrivia
//
//  Created by Pardip Bhatti on 25/04/19.
//  Copyright © 2019 Pardip Bhatti. All rights reserved.
//

import Foundation
import UIKit

let BLACK_GB = UIColor.black.withAlphaComponent(0.6).cgColor
let URL_BASE = "https://swapi.co/api"
let PERSON_URL = URL_BASE + "/people/"

typealias PersonResponseCompletion = (Person?) -> Void
typealias HomewroldResponseCompletion = (Homeworld?) -> Void
