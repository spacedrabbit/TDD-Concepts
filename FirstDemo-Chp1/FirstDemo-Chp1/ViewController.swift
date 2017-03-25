//
//  ViewController.swift
//  FirstDemo-Chp1
//
//  Created by Louis Tur on 3/24/17.
//  Copyright © 2017 catthoughts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
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
  
}

