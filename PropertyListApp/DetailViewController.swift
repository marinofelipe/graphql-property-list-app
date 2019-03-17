//
//  DetailViewController.swift
//  PropertyListApp
//
//  Created by Felipe Marino on 16/03/19.
//  Copyright © 2019 Felipe Marino. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var propertyId: String!

    @IBAction func didTouchLike(_ sender: Any) {
        let service = PropertiesService()
        service.sendLike(inPropertyID: propertyId) { didUpdate in
            // TODO: comunicate user?
        }
    }
}
