//
//  RepositoryServices.swift
//  SimpleCollectionView
//
//  Created by Carlos Rodriguez on 9/23/20.
//

import UIKit

struct Service {
    static func fetchContactsData(_ completion: @escaping (Result<[Contact], Error>) -> ()) {
        completion(.success(contactData))
    }
}

let contactData = [
    Contact(id: UUID(), name: "Samatha", lastname: "Villanueva", phoneNumber: "+56965431198", address: "", dateOfBirth: "14/09/1990"),
    Contact(id: UUID(), name: "Jesús", lastname: "Montiel", phoneNumber: "+56967331261", address: "", dateOfBirth: "09/06/2002"),
    Contact(id: UUID(), name: "Santiago", lastname: "Rodríguez", phoneNumber: "+56965842125", address: "", dateOfBirth: "30/08/1986"),
    Contact(id: UUID(), name: "Daniela", lastname: "Mendoza", phoneNumber: "+56968831628", address: "", dateOfBirth: "24/04/1975")
]
