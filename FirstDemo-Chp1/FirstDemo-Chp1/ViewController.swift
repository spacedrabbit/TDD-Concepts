//
//  ViewController.swift
//  FirstDemo-Chp1
//
//  Created by Louis Tur on 3/24/17.
//  Copyright © 2017 catthoughts. All rights reserved.
//

import UIKit


protocol Animal {
  var name: String { get set }
  var sound: String { get set }
}

protocol Rideable {
  associatedtype AnimalType: Animal
  
  init()
  func soundMade() -> String
  func myName() -> String
  func animalType() -> AnimalType
}

class Cat: Animal, Rideable {
  var name: String = "Cat"
  var sound: String = "Meow"
  typealias AnimalType = Cat
  
  required init() {}
  
  func soundMade() -> String {
     return self.sound
  }
  
  func myName() -> String {
    return self.name
  }
  
  func animalType() -> AnimalType {
    return self
  }
}

class AnimalShelter {
  
  func adopt<T: Rideable>(_ animal: T.Type) {
    
    let newAnimal = animal.init()
    
    print("Hi, i'm a \(newAnimal.soundMade())")
  }
  
}


class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let shelter = AnimalShelter()
    shelter.adopt(Cat.self)
    
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  func numberOfVowels(in string: String) -> Int {
    
    let vowels: [Character] = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]
    
    /*
     
     // This was the first implementation
     // We originally wrote this in order to write a test that passes
     // Now that the test works, we return to the implementation to improve it
     var count: Int = 0
     for c in string.characters {
     if vowels.contains(c) {
     count += 1
     }
     
     }*/

    // My Sample Solution
    /*
    let count = string.characters.filter { (char) -> Bool in
      if vowels.contains(char) { return true }
      return false
    }.count
    */
    
    // My Sample Solution Knowing Book Uses Reduce
    /*
    let count = string.characters.reduce(0) { (current: Int, char: Character) -> Int in
      return current + (vowels.contains(char) ? 1 : 0)
    }*/
    
    // Book Verbatim Solution
    return string.characters.reduce(0) {
      $0 + (vowels.contains($1) ? 1 : 0)
    }
  }
  
  func makeHeadline(from string: String) -> String {
    // following TDD, we need to return the simplest code needed to pass (Green stage)
    // return "This Is A Test Headline"
    
    // Book example (Mostly)
    /*
    let words = string.components(separatedBy: " ")
    var headline = ""
    for word in words {
      headline += word.capitalized + " "
    }
    headline.remove(at: headline.index(before: headline.endIndex))
    */
    
    // My Swifty solution
    return string.components(separatedBy: " ").map {
      $0.capitalized
    }.joined(separator: " ")
  }
  
}

