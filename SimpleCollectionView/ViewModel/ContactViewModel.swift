//
//  ContactsViewModel.swift
//  SimpleCollectionView
//
//  Created by Carlos Rodriguez on 9/23/20.
//

import Foundation

struct ContactViewModel {
    let fullName: String
    let age: String
    
    init(_ contact: Contact) {
        fullName = "\(contact.name) \(contact.lastname)"
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let date = formatter.date(from: contact.dateOfBirth!) ?? Date()
        age = "\(Calendar.current.dateComponents([.year], from: date, to: Date()).year!) años"
    }
}
