//
//  MainViewmodel.swift
//  Pruducst12
//
//  Created by Mac on 6/2/23.
//

import Foundation
protocol Viewmodel{
    func kokteli()async throws ->kok
    
}
class Viewmodel1:Viewmodel{
    private let networkmanager : NetworkManeger
    init(){
        self.networkmanager = NetworkManeger.shared
    }
    func kokteli()async throws -> kok{
      return  try await networkmanager.kokteli()
    }
}
