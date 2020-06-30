//
//  AFile.swift
//  SwiftAccessLevels
//
//  Created by Angela Yu on 14/09/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class AClass {
    
    //Global variables, also called class properties.
    private var aPrivateProperty = "private property"
    
    fileprivate var aFilePrivateProperty = "fileprivate property"
    
    var anInternalProperty = "internal property"
    
    func methodA () {
        
        var aLocalVariable = "local variable"
        
        //Step 1. Try to print aLocalVariable Here - Possible
        print("1. \(aLocalVariable) printed from methodA in AClass")
        
        //Step 3. Try to print aPrivateProperty Here - Possible
        print("3. \(aPrivateProperty) printed from methodA in AClass")
        
        //Step 6. Try to print aFilePrivateProperty Here - Possible
        print("6. \(aFilePrivateProperty) printed from methodA in AClass")
        
        //Step 9. Try to print anInternalProperty Here - Possible
        print("6. \(anInternalProperty) printed from methodA in AClass")
    }
    
    func methodB () {
        var aLocalVariable = "methodB local variable"
        
        //Step 2. Try to print aLocalVariable Here - Possible
        print("2. \(aLocalVariable) printed from methodB in AClass")
        
        //Step 4. Try to print aPrivateProperty Here - Possible
        print("4. \(aPrivateProperty) printed from methodB in AClass")
    }
    
}

class AnotherClassInTheSameFile {
    
    init() {
        var classA = AClass()
        
        //Step 5. Try to print aPrivateProperty Here - imPossible
        print("5. \(classA).aPrivateProperty' is inaccessible due to 'private' protection level")
        
        //Step 7. Try to print aFilePrivateProperty Here - Possible
        print("7. \(classA.aFilePrivateProperty) printed from AnotherClassInTheSameFile")
        
    }
}
