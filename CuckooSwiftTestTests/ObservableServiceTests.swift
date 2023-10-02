//
//  ObservableServiceTests.swift
//  ObservableServiceTests
//
//  Created by Brandon Fraune on 10/2/23.
//

import XCTest
import Cuckoo
import Nimble
import Resolver
@testable import CuckooSwiftTest

final class ObservableServiceTests: XCTestCase {
    private var observableService: IObservableService!
    
    override func setUpWithError() throws {
        observableService = MockIObservableService()

        Resolver.reset()
        Resolver.root.register(IObservableService.self) { self.observableService }

    }
    
    func test_someStream() {
//        stub(observableService) { stub in
//            when(stub.someString.get()).thenReturn("Foo")
//        }
        
        let x = observableService.someString
        
//        expect(x).toBe(equal(to("Foo")))
    }
    
}
