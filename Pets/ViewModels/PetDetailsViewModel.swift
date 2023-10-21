//
//  PetDetailsViewModel.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-20.
//

import Foundation

@MainActor
class PetDetailsViewModel: ObservableObject {

    private var service: NetworkService
    @Published var components: [UIComponent] = []

    init(service: NetworkService) {
        self.service = service
    }

    func load(petId: Int) async {
        do {
            let screenModel = try await service.loadPetDetails(Constants.Urls.petDetails(petId: petId))
            components = try screenModel.buildComponents()
        } catch {
            print(error.localizedDescription)
        }
    }

}
