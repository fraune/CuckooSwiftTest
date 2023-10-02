//
//  Injector.swift
//  CuckooSwiftTest
//
//  Created by Brandon Fraune on 10/2/23.
//

import Foundation
import Resolver

extension Resolver {
    public static func registerAllServices() {
        registerServices()
    }
    
    fileprivate static func registerServices() {
        register { ObservableService() as IObservableService }
            .scope(.application)
    }
}
