//
//  PATs.swift
//  FirstDemo-Chp1
//
//  Created by Louis Tur on 3/27/17.
//  Copyright © 2017 catthoughts. All rights reserved.
//

import Foundation

protocol Food {
  associatedtype FoodKind: Any
  
  var name: String { get }
  var calories: Int { get }
  var cost: Double { get }
  
  static func make() -> FoodKind
}

class ShortBreadCookies: Food {
  typealias FoodKind = ShortBreadCookies
  
  var name: String = "Short Bread"
  var calories: Int = 100
  var cost: Double = 2.50
  
  static func make() -> ShortBreadCookies {
    return ShortBreadCookies()
  }
}


class FoodDispenser {
  
  func didPressDispenseCookie() {
    //dispense(ShortBreadCookies())
    let food = dispensePAT(ShortBreadCookies.self)
  }
  
  //@discardableResult func dispense(_ food: Food) -> Food {
  //return food
    //}
  
  //@discardableResult func dispenseAType<T>(_ type: T.Type) -> T {
  //  return type
  //}
  
  func dispensePAT<T: Food>(_ type: T.Type) -> T.FoodKind {
    return type.make()
  }
}
