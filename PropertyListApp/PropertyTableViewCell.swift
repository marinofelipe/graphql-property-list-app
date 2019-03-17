//
//  PropertyTableViewCell.swift
//  PropertyListApp
//
//  Created by Felipe Marino on 14/03/19.
//  Copyright © 2019 Felipe Marino. All rights reserved.
//

import UIKit

class PropertyTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var contactsNamesLabel: UILabel!
    
    func setup(with property: Property) {
        setupInfoView(with: property)
        setupContactsView(with: property)
    }
    
    private func setupInfoView(with property: Property) {
        titleLabel.text = property.fragments.propertyInfo.title
        detailsLabel.text = property.fragments.propertyInfo.neighborhood! + ", " + "R$ " + String(property.fragments.propertyInfo.price!)
        likesLabel.text = String(property.fragments.propertyInfo.likes!) + " curtidas"
    }
    
    private func setupContactsView(with property: Property) {
        contactsNamesLabel.text = property.fragments.contacts.contacts?.compactMap({ $0?.name }).joined(separator: ", ")
    }
}
