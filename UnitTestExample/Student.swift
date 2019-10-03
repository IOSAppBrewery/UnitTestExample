//
//  Student.swift
//  UnitTestExample
//
//  Created by Nelson on 3/10/19.
//  Copyright © 2019 Nelson. All rights reserved.
//

import Foundation

class Student{
    
    let firstName : String
    let lastName : String
    
    var friends:[Student] = []
    
    init(firstName:String, lastName:String){
        
        self.firstName = firstName;
        self.lastName = lastName;
    }
    
    func isFirstNameVaild()->Bool{
        
        return self.firstName.count > 3
    }
    
    func isLastNameVaild()->Bool{
        
        return self.lastName.count > 3
    }
    
    func addFriend(friend:Student){
        
        self.friends.append(friend)
    }
}
