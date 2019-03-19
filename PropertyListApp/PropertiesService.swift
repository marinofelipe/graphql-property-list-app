//
//  PropertiesService.swift
//  PropertyListApp
//
//  Created by Felipe Marino on 16/03/19.
//  Copyright © 2019 Felipe Marino. All rights reserved.
//

import Foundation
import Apollo

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
    
    func sendLike(inPropertyID propertyId: String,
                  didUpdate: @escaping ((_ success: Bool) -> Void)) {
        
        apollo.perform(mutation: LikePropertyMutation(id: propertyId),
                       queue: DispatchQueue.global(qos: .userInteractive)) { result, error in
                        
                        
                        if let success = result?.data?.likeProperty.success {
                            didUpdate(success)
                            return
                        }
                        didUpdate(false)
        }
    }
}
