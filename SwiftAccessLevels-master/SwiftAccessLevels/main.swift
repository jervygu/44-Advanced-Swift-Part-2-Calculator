//
//  main.swift
//  SwiftAccessLevels
//
//  Created by Angela Yu on 14/09/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation



print("--------AClass, methodA--------")
let aClass = AClass()

aClass.methodA()


print("--------AClass, methodB--------")
aClass.methodB()



print("--------AnotherClassInTheSameFile--------")
let anotherClassInTheSameFile = AnotherClassInTheSameFile()


print(anotherClassInTheSameFile)

print("--------AnotherClassInAnotherFile--------")
let anotherClassInAnotherFile = AnotherClassInAnotherFile()

print(anotherClassInAnotherFile)


