//
//  ViewController.swift
//  PropertyListApp
//
//  Created by Felipe Marino on 12/03/19.
//  Copyright © 2019 Felipe Marino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class PropertiesService {
    
    enum PropertyListError: Error {
        case unableToFetch
    }
    
    typealias Result = ((_ properties: ListQuery.Data.PropertyList?, _ error: Error?) -> Void)
    
    func fetchProperties(result: @escaping Result) {
        apollo.fetch(query: ListQuery(),
                     cachePolicy: .fetchIgnoringCacheData,
                     queue: DispatchQueue.global(qos: .userInteractive)) { response, error in
            
            guard let propertyList = response?.data?.propertyList else {
                result(nil, PropertyListError.unableToFetch)
                return
            }
            
            result(propertyList, nil)
        }
    }
}
