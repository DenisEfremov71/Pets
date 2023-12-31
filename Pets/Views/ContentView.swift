//
//  ContentView.swift
//  Pets
//
//  Created by Denis Efremov on 2023-10-18.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var petListVM = PetListViewModel(service: WebService())

    var body: some View {
        NavigationView {
            List {
                ForEach(petListVM.components, id: \.id) { component in
                    component.render()
                }
            }
            .listStyle(.plain)
            .onAppear {
                Task {
                    await petListVM.load()
                }
            }
            .navigationTitle("Pets")
        }
    }
}

#Preview {
    ContentView()
}
