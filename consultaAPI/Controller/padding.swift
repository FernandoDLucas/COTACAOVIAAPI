//
//  padding.swift
//  nanoSwiftcChallenge
//
//  Created by Fernando de Lucas on 13/03/20.
//  Copyright © 2020 Fernando de Lucas. All rights reserved.
//

import Foundation


func padding(_ txt: String, _ width : Int) -> String{
    let length = txt.count
    guard length < width else {
        return txt
    }
    let spaces = Array<Character>.init(repeating: " ", count: width - length)
    return txt + spaces
}
