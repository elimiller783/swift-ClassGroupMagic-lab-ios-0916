//
//  Person.swift
//  PeopleAndPizza
//
//  Created by Elias Miller on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    var firstName: String
    var lastName: String
    var isHungry: Bool
    var home: Coordinate
    
    init(firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.isHungry = true
        self.home = home
    }
    
    func eatPizzaFrom(service: PizzaDeliveryService) {
        
        if isHungry == true && service.isInRange(destination: home) {
            return isHungry = true
        } else {
            return isHungry = false
        }
    }

}
