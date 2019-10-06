//
//  StudentTest.swift
//  UnitTestExampleTests
//
//  Created by Nelson on 3/10/19.
//  Copyright © 2019 Nelson. All rights reserved.
//

import XCTest

@testable import UnitTestExample

class StudentTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFirstName(){
        
        let student = Student(firstName: "Mac", lastName: "John")
        XCTAssertFalse(student.isFirstNameValid())
        
        let student2 = Student(firstName: "John", lastName: "Ken")
        XCTAssertTrue(student2.isFirstNameValid())
    }
    
    func testLastName(){
        
        let student = Student(firstName: "Mac", lastName: "John")
        XCTAssertTrue(student.isLastNameValid())
        
        let student2 = Student(firstName: "John", lastName: "Ken")
        XCTAssertFalse(student2.isLastNameValid())
    }
    
    func testAddFriend(){
        
        let newFriend = Student(firstName: "Ugly", lastName: "Face")
        let student = Student(firstName: "Uber", lastName: "Eaten")
        
        XCTAssertTrue(student.friends.count == 0)
        student.addFriend(friend: newFriend)
        XCTAssertTrue(student.friends.count == 1)
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
