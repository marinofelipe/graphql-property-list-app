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
    private var selectedProperty: Property?
    private var service: PropertiesService = PropertiesService()
    
    private var properties: [Property]? {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchPropertiesList()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fetchPropertiesList()
    }
    
    private func fetchPropertiesList() {
        service.fetchProperties { properties, error in
            DispatchQueue.main.async {
                self.properties = properties
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else { return }
        detailVC.propertyId = selectedProperty?.fragments.propertyInfo.id
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

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedProperty = properties?[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
}
