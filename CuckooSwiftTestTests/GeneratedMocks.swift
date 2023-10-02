// MARK: - Mocks generated from file: CuckooSwiftTest/SomeService/IObservableService.swift at 2023-10-02 21:27:02 +0000

//
//  IObservableService.swift
//  CuckooSwiftTest
//
//  Created by Brandon Fraune on 10/2/23.
//

import Cuckoo
@testable import CuckooSwiftTest

import Foundation
import RxSwift






 class MockIObservableService: IObservableService, Cuckoo.ProtocolMock {
    
     typealias MocksType = IObservableService
    
     typealias Stubbing = __StubbingProxy_IObservableService
     typealias Verification = __VerificationProxy_IObservableService

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: IObservableService?

     func enableDefaultImplementation(_ stub: IObservableService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    
     var someStream: Observable<String> {
        get {
            return cuckoo_manager.getter("someStream",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall:  __defaultImplStub!.someStream)
        }
        
    }
    
    
    
    
    
     var someString: String {
        get {
            return cuckoo_manager.getter("someString",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall:  __defaultImplStub!.someString)
        }
        
    }
    
    

    

    

     struct __StubbingProxy_IObservableService: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        var someStream: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockIObservableService, Observable<String>> {
            return .init(manager: cuckoo_manager, name: "someStream")
        }
        
        
        
        
        var someString: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockIObservableService, String> {
            return .init(manager: cuckoo_manager, name: "someString")
        }
        
        
        
    }

     struct __VerificationProxy_IObservableService: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
        
        
        var someStream: Cuckoo.VerifyReadOnlyProperty<Observable<String>> {
            return .init(manager: cuckoo_manager, name: "someStream", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        
        
        
        var someString: Cuckoo.VerifyReadOnlyProperty<String> {
            return .init(manager: cuckoo_manager, name: "someString", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        
    
        
    }
}


 class IObservableServiceStub: IObservableService {
    
    
    
    
     var someStream: Observable<String> {
        get {
            return DefaultValueRegistry.defaultValue(for: (Observable<String>).self)
        }
        
    }
    
    
    
    
    
     var someString: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
    }
    
    

    

    
}




