//
//  ContactPerson.swift
//  SpeicherData
//
//  Created by Georg Zauns on 30.04.17.
//  Copyright © 2017 Georg Zauns. All rights reserved.
//

import UIKit

class ContactPerson: NSObject {

    var firstName: String
    var lastName: String
    var emailAddress: String
    
    override init() {
        firstName = "Georg"
        lastName = "Zauns"
        emailAddress = "gz@gmail.com"
        super.init()
    }
    
    init(withFirstName first: String, lastName last: String, emailAddress email: String) {
        firstName = first
        lastName = last
        emailAddress = email
        super.init()
    }
}
