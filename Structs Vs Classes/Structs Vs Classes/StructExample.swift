//
//  StructExample.swift
//  Structs Vs Classes
//
//  Created by Jaypee Umandap on 6/30/20.
//  Copyright © 2020 Jervy Umandap. All rights reserved.
//

import Foundation

// simpler, faster because it restored in stack rather than heap,
// can create deep copies
// true immutalbity
// no memory leaks, memory management
// threadsafe, multithreading

// value type, can copy, wont affect the another,
// with auto initializer
// cant subClass

struct StructHero {
    var name: String
    var universe: String
    
    func reverseName() -> String {
        return String(self.name.reversed())
    }
    mutating func nameTurnReverese() {
        self.name = String(self.name.reversed()) // cant do because we need to create a new copy, or mark mutating
    }
    
}

//let hero = StructHero(name: "Wanda", universe: "Marvel")
