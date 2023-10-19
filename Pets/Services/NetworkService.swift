//
//  NetworkService.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-19.
//

import Foundation

protocol NetworkService {
    func load(_ resource: String) async throws -> ScreenModel
}
