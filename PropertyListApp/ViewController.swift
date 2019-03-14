//
//  ViewController.swift
//  PropertyListApp
//
//  Created by Felipe Marino on 12/03/19.
//  Copyright © 2019 Felipe Marino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var properties: [Property]? {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 140.0
        fetchPropertiesList()
    }
    
    private func fetchPropertiesList() {
        let service = PropertiesService()
        service.fetchProperties { properties, error in
            DispatchQueue.main.async {
                self.properties = properties
            }
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return properties?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PropertyTableViewCell") as? PropertyTableViewCell else { fatalError("Error while dequeing cell")}
        cell.setup(with: properties![indexPath.row])
        return cell
    }
}

typealias Property = ListQuery.Data.PropertyList.Property

class PropertiesService {
    
    enum PropertyListError: Error {
        case unableToFetch
    }
    
    typealias Result = ((_ properties: [Property]?, _ error: Error?) -> Void)
    
    func fetchProperties(result: @escaping Result) {
        apollo.fetch(query: ListQuery(),
                     cachePolicy: .fetchIgnoringCacheData,
                     queue: DispatchQueue.global(qos: .userInteractive)) { response, error in
            
            guard let properties = response?.data?.propertyList?.properties?.compactMap({ $0 }) else {
                result(nil, PropertyListError.unableToFetch)
                return
            }
                        
            result(properties, nil)
        }
    }
}
