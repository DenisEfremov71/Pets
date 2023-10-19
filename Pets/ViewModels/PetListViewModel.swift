//
//  PetListViewModel.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-19.
//

import Foundation

@MainActor
class PetListViewModel: ObservableObject {
    private let service: NetworkService
    @Published var components: [UIComponent] = []

    init(service: NetworkService) {
        self.service = service
    }

    func load() async {
        do {
            let screenModel = try await service.load(Constants.ScreeenResources.petListing)
            components = try screenModel.buildComponents()
        } catch {
            print(error.localizedDescription)
        }
    }
}
