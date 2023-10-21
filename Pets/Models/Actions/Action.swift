//
//  Action.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-20.
//

import Foundation

enum ActionType: String, Decodable {
    case sheet
    case push
}

struct Action: Decodable {
    let type: ActionType
    let destination: Route
}
