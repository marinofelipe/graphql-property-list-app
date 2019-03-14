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
    @IBOutlet weak var neighborhoodLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    func setup(with property: Property) {
        setupInfoView(with: property)
        setupInteractionsView(with: property)
    }
    
    private func setupInfoView(with property: Property) {
        titleLabel.text = property.fragments.propertyInfo.title
        neighborhoodLabel.text = property.fragments.propertyInfo.neighborhood
        priceLabel.text = "R$ " + String(property.fragments.propertyInfo.price!)
    }
    
    private func setupInteractionsView(with property: Property) {
        likesLabel.text = String(property.fragments.propertyInteractions.likes!)
    }
    
    @IBAction func didTouchLike(_ sender: Any) {
        var likesCount = Int(likesLabel.text!)!
        likesCount += 1
        likesLabel.text = String(likesCount)
    }
}
