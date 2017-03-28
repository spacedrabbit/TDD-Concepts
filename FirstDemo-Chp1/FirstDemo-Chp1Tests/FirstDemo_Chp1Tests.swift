//
//  FirstDemo_Chp1Tests.swift
//  FirstDemo-Chp1Tests
//
//  Created by Louis Tur on 3/24/17.
//  Copyright © 2017 catthoughts. All rights reserved.
//

import XCTest
@testable import FirstDemo_Chp1

class FirstDemo_Chp1Tests: XCTestCase {
  
  var viewController: ViewController!
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.continueAfterFailure = false // this will stop as soon as something fails
    viewController = ViewController()
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func test_NumberOfVowels_WhenPassedDominik_ReturnsThree() {
    let viewController = ViewController()
    let string = "Dominik"
    
    let numberOfVowels = viewController.numberOfVowels(in: string)
    
    // Part 1:
    // XCTAssertEqual(numberOfVowels, 3, "should find three vowels in Dominik")
    
    // The last three parameters of all XCTAsset functions are optional: message, file, and line
    // But you can include the file/line params to clean up the console logs
    
    /*
     XCTAssertEqual(numberOfVowels, 4, "should find three vowels in Dominik")
     
     Produces an output of 
     Test Case '-[FirstDemo_Chp1Tests.FirstDemo_Chp1Tests test_NumberOfVowels_WhenPassedDominik_ReturnsThree]' started.
     /Users/louistur/Developer/Swift/TDD-Concepts/FirstDemo-Chp1/FirstDemo-Chp1Tests/FirstDemo_Chp1Tests.swift:30: error: -[FirstDemo_Chp1Tests.FirstDemo_Chp1Tests test_NumberOfVowels_WhenPassedDominik_ReturnsThree] : XCTAssertEqual failed: ("3") is not equal to ("4") - should find three vowels in Dominik
     
    -- But -- 
     
     XCTAssertEqual(numberOfVowels, 4, "should find three vowels in Dominik", file: "FirstDemo_Chp1Tests.swift", line: 24)
     
     Produces an output of
     Test Case '-[FirstDemo_Chp1Tests.FirstDemo_Chp1Tests test_NumberOfVowels_WhenPassedDominik_ReturnsThree]' started.
     FirstDemo_Chp1Tests.swift:24: error: -[FirstDemo_Chp1Tests.FirstDemo_Chp1Tests test_NumberOfVowels_WhenPassedDominik_ReturnsThree] : XCTAssertEqual failed: ("3") is not equal to ("4") - should find three vowels in Dominik
     */
    
    XCTAssertEqual(numberOfVowels, 3, "should find three vowels in Dominik", file: "FirstDemo_Chp1Tests.swift", line: 24)
  }
  
  /*
0    // Part 2:
    // Now in the refactor stage, we see that viewcontroller is used twice, making it a candidate 
    // to refactor through DRY
    // let viewController: ViewController = ViewController()
    
    let string = "this is A test headline"
    let headline = viewController.makeHeadline(from: string)
    
    XCTAssertEqual(headline, "This Is A Test Headline", "headlines should be capital case")
  }
  
  func test_MakeHeadline_ReturnStringWithEachWordStartCapital2() {
    let string = "Here is another example"
    let headline = viewController.makeHeadline(from: string)
    XCTAssertEqual(headline, "Here Is Another Example", "headlines should be capital case")
  }
  */
  
  // Part 3: Better Readability
  func test_MakeHeadline_ReturnStringWithEachWordStartCapital() {
    let input = "this is A test headline"
    let expectedOutput = "This Is A Test Headline"
      
    let headline = viewController.makeHeadline(from: input)
    
    XCTAssertEqual(headline, expectedOutput, "headlines should be capital case")
  }
  
  func test_MakeHeadline_ReturnStringWithEachWordStartCapital2() {
    let string = "Here is another example"
    let expectedOutput = "Here Is Another Example"
    
    let headline = viewController.makeHeadline(from: string)
    
    XCTAssertEqual(headline, expectedOutput, "headlines should be capital case")
  }

}
