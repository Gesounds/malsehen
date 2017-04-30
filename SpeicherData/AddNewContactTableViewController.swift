//
//  AddNewContactTableViewController.swift
//  SpeicherData
//
//  Created by Georg Zauns on 30.04.17.
//  Copyright © 2017 Georg Zauns. All rights reserved.
//

import UIKit

class AddNewContactTableViewController: UITableViewController {

    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtEmailAddress: UITextField!
    @IBOutlet weak var txtAdresse: UITextField!
    @IBOutlet weak var txtHausnummer: UITextField!
    @IBOutlet weak var txtPLZ: UITextField!
    @IBOutlet weak var txtStadt: UITextField!
    @IBOutlet weak var txtTelefonnummer: UITextField!
    @IBOutlet weak var txtKommentar: UITextField!
    
    var contact: ContactPerson!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
   

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "SaveSegue") {
            contact = ContactPerson(withFirstName: txtFirstName.text!, lastName: txtLastName.text!, adresse: txtAdresse.text!, hausNummer: txtHausnummer.text!, plz: txtPLZ.text!, stadt: txtStadt.text!, telefonNummer: txtTelefonnummer.text!, emailAddress: txtEmailAddress.text!, kommentar: txtKommentar.text!)
        }
    }
   

}
