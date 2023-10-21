//
//  LocalService.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-19.
//

import Foundation

class LocalService: NetworkService {
    func load(_ resource: String) async throws -> ScreenModel {
        
        guard let path = Bundle.main.path(forResource: resource, ofType: "json") else {
            throw NetworkError.localFileNotFound
        }

        guard let data = try? Data(contentsOf: URL(fileURLWithPath: path)) else {
            throw NetworkError.noDataForLocalResource
        }

        guard let screenModel = try? JSONDecoder().decode(ScreenModel.self, from: data) else {
            throw NetworkError.screenModelDecodingError
        }

        return screenModel
    }

    func loadPetDetails(_ resource: String) async throws -> ScreenModel {
        ScreenModel(pageTitle: "Dummy", components: [])
    }


}
