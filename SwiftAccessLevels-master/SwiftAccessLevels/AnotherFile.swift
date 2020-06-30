//
//  AnotherFile.swift
//  SwiftAccessLevels
//
//  Created by Angela Yu on 14/09/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class AnotherClassInAnotherFile {
    let aClass = AClass()
    
    init() {
        
        //Step 8. Try to print aFilePrivateProperty Here - imPossible
        print("8. aclass.aFilePrivateProperty is inaccessible due to 'fileprivate' protection level")
        
        //Step 10. Try to print anInternalProperty Here - Possible
        print("10 \(aClass.anInternalProperty)printed from AnotherFile in AClass" )
        
    }
    
}
