//
//  ObservableService.swift
//  CuckooSwiftTest
//
//  Created by Brandon Fraune on 10/2/23.
//

import Foundation
import RxSwift

class ObservableService: IObservableService {
    var someStream: RxSwift.Observable<String> {
        get {
            Observable.just("Hello")
        }
    }
    
    var someString: String {
        "Test"
    }
}
