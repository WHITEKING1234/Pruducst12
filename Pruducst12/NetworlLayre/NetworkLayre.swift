//
//  NetworkLayre.swift
//  Pruducst12
//
//  Created by Mac on 6/2/23.
//

import Foundation

final class NetworkManeger{
    static let shared = NetworkManeger()
    private init() {}
    private let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/lookup.php?%20i=11007")!
    func kokteli() async throws  -> kok{
        let (data,_ ) = try await URLSession.shared.data(from: url)
        return try await  decoder(data:data)
    }
   private func decoder<T:Decodable>(data:Data) async throws -> T{
        let decoder = JSONDecoder()
       return try  decoder.decode(T.self,from:data)
    }

}
