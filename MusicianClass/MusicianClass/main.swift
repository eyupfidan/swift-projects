//
//  main.swift
//  MusicianClass
//
//  Created by Eyüp Fidan on 19.12.2021.
//

import Foundation


let james = Musicians(nameInit: "James", ageInit: 50, instrumentInit: "Guitar",typeInit: .Vocalist)

/*
james.age = 50
james.name = "James Hetfield"
james.instrument = "Guitar"
*/

/*
print(james.age)
print(james.type)
 */
james.sing()

let kirk = SuperMusician(nameInit: "Kirk", ageInit: 55, instrumentInit: "Guitar", typeInit: .LeadGuitar)

kirk.sing2()
kirk.sing()

