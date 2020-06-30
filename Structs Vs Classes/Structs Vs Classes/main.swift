//
//  main.swift
//  Structs Vs Classes
//
//  Created by Jaypee Umandap on 6/30/20.
//  Copyright © 2020 Jervy Umandap. All rights reserved.
//

import Foundation

let classHero = ClassHero(name: "Spiderman", universe: "Marvel")
let structHero = StructHero(name: "Wonder Woman", universe: "DC")

classHero.name = "Vision" // legal because the ClassHero variables is var not let
var hero1 = classHero
hero1.name = "Hulk"


var avengers = [classHero, hero1]
avengers[0].name = "Thor"


print("Class hero name = \(classHero.name)") // prints Gagamboy, reference type
print("another Class Hero name = \(hero1.name)") // prints Gagamboy, copy the reference and change the same thing.

print("first avenger name = \(avengers[0].name)") // will print thor because, array of references

print("------------------------------------") // divider

//structHero.name = "Super girl" // illegal for struct, true immutability

var hero2 = structHero
hero2.name = "Superman"

var dCs = [structHero, hero2]
dCs[0].name = "Batman"


print("Struct hero name = \(structHero.name)") // prints Wonder Woman, value type
print("another Struct hero name = \(hero2.name)") // prints Wanda, copy the value and change the value to a new thing
print("first DC's name = \(dCs[0].name)") // will print Batman because, because it is struct

print(structHero.reverseName())



