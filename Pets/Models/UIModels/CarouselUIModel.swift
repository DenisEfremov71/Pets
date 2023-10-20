//
//  CarouselUIModel.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-20.
//

import Foundation

struct CarouselCellUIModel: Decodable, Identifiable {
    let id = UUID()
    let petId: Int
    let imageUrl: URL

    private enum CodingKeys: String, CodingKey {
        case petId
        case imageUrl
    }
}

struct CarouselUIModel: Decodable {
    let items: [CarouselCellUIModel]
    let action: Action
}
