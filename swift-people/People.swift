//
//  People.swift
//  swift-people
//
//  Created by TJ Carney on 1/30/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    let name: String
    var ageInYears: Int?
    var skills: [String] = []
    var qualifiedTutor: Bool {
        return skills.count >= 4
    }
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    init() {
        name = "John Doe"
        ageInYears = nil
    }
    
    func celebrateBirthday() -> String {
        var birthdayMessage: String = ""
        if ageInYears == nil {
            birthdayMessage = "HAPPY BIRTHDAY, \(name.uppercased())!!!"
        } else {
            if var ageInYears = ageInYears {
                var age = ageInYears.ordinal()
                ageInYears += 1
                birthdayMessage = "HAPPY \(ageInYears)\(age.uppercased()) BIRTHDAY, \(name.uppercased())!!!"
            }
        }
        ageInYears? += 1
        return birthdayMessage
    }
    
    func learnSkillBash() {
        if !skills.contains("bash") {
            skills.append("bash")
        }
    }
    
    func learnSkillXcode() {
        if !skills.contains("Xcode") {
            skills.append("Xcode")
        }

    }
    
    func learnSkillObjectiveC() {
        if !skills.contains("Objective-C") {
            skills.append("Objective-C")
        }
    }

    func learnSkillSwift() {
        if !skills.contains("Swift") {
            skills.append("Swift")
        }

    }
    
    func learnSkillInterfaceBuilder() {
        if !skills.contains("Interface Builder") {
            skills.append("Interface Builder")
        }

    }
    
    
}
