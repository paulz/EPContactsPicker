//
//  EPExtensions.swift
//  EPContactPicker
//
//  Created by Prabaharan Elangovan on 14/10/15.
//  Copyright © 2015 Prabaharan Elangovan. All rights reserved.
//

import UIKit
import Foundation

extension String {
    subscript(r: Range<Int>) -> String? {
        get {
            return self[(startIndex.advancedBy(r.startIndex) ..< startIndex.advancedBy(r.startIndex.distanceTo(r.endIndex)))]
        }
    }

    func containsAlphabets() -> Bool {
        //Checks if all the characters inside the string are alphabets
        let set = NSCharacterSet.letterCharacterSet()
        return self.utf16.contains( { return set.characterIsMember($0)  } )
    }
}