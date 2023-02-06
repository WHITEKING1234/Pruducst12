//
//  Kokteli.swift
//  Pruducst12
//
//  Created by Mac on 6/2/23.
//

import Foundation

struct kok:Decodable{
    let drinks:[drink]
}







struct drink:Decodable{
    let strDrink:String
    let strDrinkThumb:String
}
