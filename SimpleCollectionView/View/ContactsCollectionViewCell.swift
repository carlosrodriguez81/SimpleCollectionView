//
//  ContactsCollectionViewCell.swift
//  SimpleCollectionView
//
//  Created by Carlos Rodriguez on 9/23/20.
//

import UIKit

class ContactsCollectionViewCell: UICollectionViewCell {
    
    var contactViewModel: ContactViewModel! {
        didSet {
            guard let contact = contactViewModel else { return }
            nameLabel.text = contact.fullName
            ageLabel.text = contact.age
        }
    }
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .blue
        return label
    }()
    
    var ageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.italicSystemFont(ofSize: 16)
        label.textAlignment = .right
        label.textColor = .black
        return label
    }()
    
    var separatorView: UIView = {
        let separatorView = UIView()
        separatorView.backgroundColor = .lightGray
        return separatorView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addingSubViews()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addingSubViews() {
        addSubview(nameLabel)
        addSubview(ageLabel)
        addSubview(separatorView)
    }
    
    func setupConstraints() {
        nameLabel.anchors(top: topAnchor, bottom: nil, left: leftAnchor, right: nil, paddingTop: 0, paddingBottom: 0, paddingLeft: 10, paddingRight: 0, width: 200, height: 40)
        ageLabel.anchors(top: topAnchor, bottom: nil, left: nameLabel.rightAnchor, right: rightAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 10, paddingRight: 10, width: 0, height: 40)
        separatorView.anchors(top: nameLabel.bottomAnchor, bottom: nil, left: leftAnchor, right: rightAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: 0, height: 1)
    }
}
