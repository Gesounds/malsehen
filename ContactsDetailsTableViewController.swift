//
//  ContactsDetailsTableViewController.swift
//  SpeicherData
//
//  Created by Georg Zauns on 30.04.17.
//  Copyright © 2017 Georg Zauns. All rights reserved.
//

import UIKit

class ContactsDetailsTableViewController: UITableViewController {
    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblEmailAddress: UILabel!
    @IBOutlet weak var lblAdresse: UILabel!
    @IBOutlet weak var lblHausnummer: UILabel!
    @IBOutlet weak var lblPlz: UILabel!
    @IBOutlet weak var lblStadt: UILabel!
    @IBOutlet weak var lblTelefonnummer: UILabel!
    @IBOutlet weak var lblKommentar: UILabel!
    
    var contact : ContactPerson!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblFirstName.text = contact.firstName
        lblLastName.text = contact.lastName
        lblEmailAddress.text = contact.emailAddress
        lblAdresse.text = contact.adresse
        lblHausnummer.text = contact.hausNummer
        lblPlz.text = contact.plz
        lblStadt.text = contact.stadt
        lblTelefonnummer.text = contact.telefonNummer
        lblKommentar.text = contact.kommentar
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

  }
