//
//  ContentView.swift
//  PlacesAI
//
//  Created by MacBook Pro on 24/04/24.
//

import SwiftUI
import GoogleGenerativeAI

struct ContentView: View {
    @StateObject var placeVM = PlaceVM()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(placeVM.place, id: \.self) { item in
                    PlaceRow(place: item)
                }
               
            }
            .navigationTitle("Bengkulu")
            .overlay {
                placeVM.place.isEmpty ? ProgressView() : nil
            }
//            .task {
//                await placeVM.getPlaces()
//            }
            .onChange(of: placeVM.isReady) { oldValue,
                isReady in
                if isReady {
                    Task {
                        await placeVM.getPlaces()
                    }
                }
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
