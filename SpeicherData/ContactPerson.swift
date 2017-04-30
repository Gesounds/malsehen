//
//  ContactPerson.swift
//  SpeicherData
//
//  Created by Georg Zauns on 30.04.17.
//  Copyright © 2017 Georg Zauns. All rights reserved.
//

import UIKit

class ContactPerson: NSObject, NSCoding {

    var firstName: String
    var lastName: String
    var adresse: String
    var hausNummer: String
    var plz: String
    var stadt: String
    var telefonNummer: String
    var emailAddress: String
    var kommentar: String
    override init() {
        firstName = "Georg"
        lastName = "Zauns"
        emailAddress = "gz@gmail.com"
        adresse = "Willi-Becker-Allee"
        hausNummer = "222"
        plz = "40249"
        stadt = "Düsseldorf"
        telefonNummer = "0211 - 4777624"
        kommentar = "Bitte 2 mal klingeln"
        super.init()
    }
    
    init(withFirstName first: String, lastName last: String, adresse address: String, hausNummer homeNummer: String, plz postleitzahl: String, stadt city: String, telefonNummer teflonNr: String, emailAddress email: String, kommentar comment: String) {
        firstName = first
        lastName = last
        adresse = address
        hausNummer = homeNummer
        plz = postleitzahl
        stadt = city
        telefonNummer = teflonNr
        emailAddress = email
        kommentar = comment
        super.init()
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(firstName, forKey: "FirstName")
        aCoder.encode(lastName, forKey: "LastName")
        aCoder.encode(emailAddress, forKey: "EmailAddress")
        aCoder.encode(adresse, forKey: "DieAdresse")
        aCoder.encode(hausNummer, forKey: "Hausnummer")
        aCoder.encode(plz, forKey: "Postleitzahl")
        aCoder.encode(stadt, forKey: "Stadt")
        aCoder.encode(telefonNummer, forKey: "Telefonnummer")
        aCoder.encode(kommentar, forKey: "Kommentar")
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        firstName = aDecoder.decodeObject(forKey: "FirstName") as! String
        lastName = aDecoder.decodeObject(forKey: "LastName") as! String
        emailAddress = aDecoder.decodeObject(forKey: "EmailAddress") as! String
        adresse = aDecoder.decodeObject(forKey: "DieAdresse") as! String
        hausNummer = aDecoder.decodeObject(forKey: "Hausnummer") as! String
        plz = aDecoder.decodeObject(forKey: "Postleitzahl") as! String
        stadt = aDecoder.decodeObject(forKey: "Stadt") as! String
        telefonNummer = aDecoder.decodeObject(forKey: "Telefonnummer") as! String
        kommentar = aDecoder.decodeObject(forKey: "Kommentar") as! String
        super.init()
    }
}
