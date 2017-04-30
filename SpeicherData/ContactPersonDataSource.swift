//
//  ContactPersonDataSource.swift
//  SpeicherData
//
//  Created by Georg Zauns on 30.04.17.
//  Copyright © 2017 Georg Zauns. All rights reserved.
//

import UIKit

class ContactPersonDataSource: NSObject {
    let contacts = NSMutableArray()
    
    override init() {
        super.init()
        loadContacts()
    }
    func loadContacts() {
        // 1. get the file url
        let fileUrl = getFileUrl()
        // 2. check if the file exist or not
        if (FileManager.default.fileExists(atPath: fileUrl.path)) {
            // 3. load the contents of the file
            let contents = NSKeyedUnarchiver.unarchiveObject(withFile: fileUrl.path) as! NSArray
            contacts.addObjects(from: contents as! [Any])
        } else {
            
        let sample1 = ContactPerson()
        contacts.add(sample1)
        let sample2 = ContactPerson(withFirstName: "John", lastName: "Dumm", adresse: "Reichlinger Straße", hausNummer: "2", plz: "40424", stadt: "Essen", telefonNummer: "0231 - 341435", emailAddress: "bert@aol.com", kommentar: "3 mal klingeln")
        addContact(contact: sample2)
            saveContacts()
        }
    }
    func getFileUrl() -> URL {
       // 1. get a reference to the default FileManager
        let fileManager = FileManager.default
        // 2. get a reference to the home directory ( documents directory with read and write)
        let homeDir = try! fileManager.url(for: FileManager.SearchPathDirectory.documentDirectory, in: FileManager.SearchPathDomainMask.userDomainMask, appropriateFor: nil, create: true)
        // 3. get a reference to a url for the file that we will save
        let fileUrl = homeDir.appendingPathComponent("addressBook.data")
        // 4. return the fileUrl
        return fileUrl
    }
    
    func saveContacts() {
        // 1. get a reference to the file path to save contacs to
        let fileURL = getFileUrl()
        // 2. save the contacts array to the file
        NSKeyedArchiver.archiveRootObject(contacts, toFile: fileURL.path)
    }
    
    func addContact(contact c: ContactPerson) {
        contacts.add(c)
        saveContacts()
    }
    func countOfContacts() -> Int {
        return contacts.count
    }
    func contactAtIndex(index i: Int) -> ContactPerson {
        return contacts.object(at: i) as! ContactPerson
    }
    
    func deleteContact(at index: Int) {
        contacts.removeObject(at: index)
        //save
        saveContacts()
    }
    
    func moveContacts(from fromIndex: Int, to toIndex: Int) {
        let fromContact = contactAtIndex(index: fromIndex)
        let toContact = contactAtIndex(index: toIndex)
        contacts.replaceObject(at: fromIndex, with: toContact)
        contacts.replaceObject(at: toIndex, with: fromContact)
        saveContacts()
}

}
