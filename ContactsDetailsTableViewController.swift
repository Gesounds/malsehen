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
    
    var contact : ContactPerson!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblFirstName.text = contact.firstName
        lblLastName.text = contact.lastName
        lblEmailAddress.text = contact.emailAddress
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

  }
