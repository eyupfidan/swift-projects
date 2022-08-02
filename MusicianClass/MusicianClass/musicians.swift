//
//  musicians.swift
//  MusicianClass
//
//  Created by Eyüp Fidan on 19.12.2021.
//

import Foundation


class Musicians {
    
    //Enum
    enum MusicianType {
        case LeadGuitar
        case Vocalist
        case Drummer
        case Bassist
        case Violentist
    }
    
    
    
    //Property
    var name : String
    var age : Int
    var instrument : String
    var type : MusicianType
    
    
    //Initializer (Constructor)
    init(nameInit : String,ageInit : Int, instrumentInit : String, typeInit : MusicianType) {
        
        name = nameInit
        age = ageInit
        instrument = instrumentInit
        type = typeInit
    }
    
    func sing () {
        print("nothing else matters")
    }
    
    private func test() {
            print("Private function called")
    }
    
}
