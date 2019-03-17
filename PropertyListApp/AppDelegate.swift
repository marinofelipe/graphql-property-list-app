//
//  AppDelegate.swift
//  PropertyListApp
//
//  Created by Felipe Marino on 12/03/19.
//  Copyright © 2019 Felipe Marino. All rights reserved.
//

import UIKit
import Apollo

extension URL {
    static var main: URL { return URL(string: "http://localhost:4000/")! }
}

var apollo: ApolloClient = {
    var configuration = URLSessionConfiguration.default
    configuration.timeoutIntervalForRequest = 20.0
    configuration.timeoutIntervalForResource = 20.0
    
    let networkTransport = HTTPNetworkTransport(url: URL.main, configuration: configuration)
    return ApolloClient(networkTransport: networkTransport)
}()

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        apollo.cacheKeyForObject = { $0["id"] }
        return true
    }
}
