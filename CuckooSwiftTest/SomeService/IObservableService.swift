//
//  IObservableService.swift
//  CuckooSwiftTest
//
//  Created by Brandon Fraune on 10/2/23.
//

import Foundation
import RxSwift

protocol IObservableService {
    var someValue: Observable<String> { get }
}
