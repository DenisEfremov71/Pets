//
//  WebService.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-18.
//

import Foundation

enum NetworkError: Error {
    case badUrl
    case noData
    case decodingError
    case invalidServerResponse
}

class WebService {

    func load(resource: String) async throws {

        guard let url = URL(string: resource) else {
            throw NetworkError.badUrl
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NetworkError.invalidServerResponse
        }

    }

}
