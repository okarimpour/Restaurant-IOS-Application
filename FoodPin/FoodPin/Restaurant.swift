//
//  restaurant.swift
//  FoodPin
//
//  Created by omid karimpour on 2016-07-07.
//  Copyright © 2016 omid karimpour. All rights reserved.
//


//Don't forget that it is on OS X change that to iOS
class Restaurant {
    var name = ""
    var type = ""
    var location = ""
    var phone = ""
    var image = ""
    var isVisited = false
    
    init (name:String, type:String, location:String, phoneNumber:String, image:String, isVisited:Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.phone = phoneNumber
        self.image = image
        self.isVisited = isVisited
    }
}
