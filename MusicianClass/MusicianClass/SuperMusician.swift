//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by Eyüp Fidan on 19.12.2021.
//

import Foundation


class SuperMusician : Musicians {
    
    func sing2() {
        print("enter night")
    }
    
    override func sing() {
        super.sing()
        print("exit light")
    }
}
