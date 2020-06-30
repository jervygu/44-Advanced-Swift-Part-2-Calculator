//
//  ClassExample.swift
//  Structs Vs Classes
//
//  Created by Jaypee Umandap on 6/30/20.
//  Copyright © 2020 Jervy Umandap. All rights reserved.
//

import Foundation

// has inheritance
// works with Objective-C code
//

// reference type, when editing, u are changing the same object, like when working on presentation
//


class ClassHero {
    var name: String
    var universe: String
    
    init(name: String, universe: String) {
        self.name = name
        self.universe = universe
    }
}

//let hero = ClassHero(name: "Black Widow", universe: "Marvel")
