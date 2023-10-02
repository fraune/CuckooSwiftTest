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
import RxSwift
@testable import CuckooSwiftTest

final class ObservableServiceTests: XCTestCase {
    private var observableService: MockIObservableService!
    
    override func setUpWithError() throws {
        observableService = MockIObservableService()

        Resolver.reset()
        Resolver.root.register(IObservableService.self) { self.observableService }

    }
    
    func test_someStream() {
        stub(observableService) { stub in
            when(stub.someStream.get).thenReturn(Observable.just("dude"))
        }
        
        
    }
    
    func test_someString() {
        stub(observableService) { stub in
            when(stub.someString.get).thenReturn("Mock test")
        }
        
        let x = observableService.someString
        
        expect(x).to(equal("Mock test"))
    }
    
}
