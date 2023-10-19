//
//  ScreenModel.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-19.
//

import Foundation

struct ScreenModel: Decodable {
    let pageTitle: String
    let components: [ComponentModel]
}

struct ComponentModel: Decodable {
    let type: ComponentType
    let data: [String: String]
}

enum ComponentType: String, Decodable {
    case featuredImage
}
