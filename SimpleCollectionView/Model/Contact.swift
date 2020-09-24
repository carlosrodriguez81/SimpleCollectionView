//
//  User.swift
//  SimpleCollectionView
//
//  Created by Carlos Rodriguez on 9/23/20.
//

import Foundation

class Contact: NSObject{
    let id: UUID
    let name: String
    let lastname: String
    let phoneNumber: String
    let address: String?
    let dateOfBirth: String?
    
    init(id: UUID, name: String, lastname: String, phoneNumber: String, address: String, dateOfBirth: String) {
        self.id = id
        self.name = name
        self.lastname = lastname
        self.phoneNumber = phoneNumber
        self.address = address
        self.dateOfBirth = dateOfBirth
    }
}
