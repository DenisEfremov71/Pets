//
//  WebService.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-18.
//

import Foundation

enum NetworkError: Error {
    case badUrl
    case noDataForRemoteResource
    case noDataForLocalResource
    case screenModelDecodingError
    case invalidServerResponse
    case localFileNotFound
}

class WebService: NetworkService {

    func load(_ resource: String) async throws -> ScreenModel {

//        guard let url = Constants.ScreeenResources.resource(for: resource) else {
//            throw NetworkError.badUrl
//        }

        guard let url = URL(string: Constants.Urls.petListing) else {
            throw NetworkError.badUrl
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NetworkError.invalidServerResponse
        }

        guard let screenModel = try? JSONDecoder().decode(ScreenModel.self, from: data) else {
            throw NetworkError.screenModelDecodingError
        }

        return screenModel
    }

    func loadPetDetails(_ resource: String) async throws -> ScreenModel {
        guard let url = URL(string: resource) else {
            throw NetworkError.badUrl
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NetworkError.invalidServerResponse
        }

        guard let screenModel = try? JSONDecoder().decode(ScreenModel.self, from: data) else {
            throw NetworkError.screenModelDecodingError
        }

        return screenModel
    }

}
