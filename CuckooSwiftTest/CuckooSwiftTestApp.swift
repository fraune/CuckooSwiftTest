//
//  CuckooSwiftTestApp.swift
//  CuckooSwiftTest
//
//  Created by Brandon Fraune on 10/2/23.
//

import SwiftUI
import Resolver

@main
struct CuckooSwiftTestApp: App {
    
    init() {
        Resolver.registerAllServices()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
