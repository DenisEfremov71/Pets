//
//  Constants.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-18.
//

import Foundation

struct Constants {

    struct ScreeenResources {
        static let baseUrl = "localhost:3000"
        static let petListing = "pet-listing"

        static func petDetails(petId: Int) -> String {
            return "/pet-details/\(petId)"
        }

        static func resource(for resourceName: String) -> URL? {
            var components = URLComponents()
            components.scheme = "http"
            components.percentEncodedHost = baseUrl
            components.path = "/\(resourceName)"
            return components.url
        }
    }

    struct Urls {
        static let baseUrl = "http://localhost:3000"
        static let petListing = "\(baseUrl)/pet-listing"

        static func petDetails(petId: Int) -> String {
            return "\(baseUrl)/pet-details/\(petId)"
        }
    }

}
