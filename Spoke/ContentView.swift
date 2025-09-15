//
//  ContentView.swift
//  Spoke
//
//  Created by Jonathan Corpuz on 2025-09-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                CarKilometersCard(
                    serviceType: "Oil Change",
                    currentKilometers: 87542,
                    lastServiceKm: 85000,
                    nextServiceKm: 90000
                )
                .padding()
                
                // Other UI elements...
            }
        }
    }
}

#Preview {
    ContentView()
}
