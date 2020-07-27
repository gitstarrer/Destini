//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story{
    let title : String
    let choice1 : String
    let choice1Destination : Int
    let choice2 : String
    let choice2Destination : Int
    
    
    init(q : String, c1:String,cd1:Int,c2:String,cd2:Int) {
        title = q
        choice1 = c1
        choice1Destination = cd1
        choice2 = c2
        choice2Destination = cd2
       
    }
}
