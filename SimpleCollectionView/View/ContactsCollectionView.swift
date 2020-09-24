//
//  ViewController.swift
//  SimpleCollectionView
//
//  Created by Carlos Rodriguez on 9/23/20.
//

import UIKit

class ContactsCollectionView: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var contacts: [Contact] = []
    let cellId = "cellId"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCollectionView()
        setupNavigationBar()
        fetchData()
    }
    
    func setupCollectionView() {
        collectionView.backgroundColor = .white
        collectionView?.register(ContactsCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    func setupNavigationBar() {
        navigationItem.title = "Contacts"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "AddCircle"), style: .plain, target: self, action: #selector(handleNewContact))
    }
    
    func fetchData() {
        Service.fetchContactsData { (result) in
            switch result {
            case .success(let data):
                self.contacts = data
                self.collectionView.reloadData()
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }
    
    @objc func handleNewContact() {
        print("present view AddContact - Later")
    }
}

extension ContactsCollectionView {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ContactsCollectionViewCell
        cell.contactViewModel = ContactViewModel(contacts[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

