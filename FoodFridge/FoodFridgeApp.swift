//
//  FoodFridgeApp.swift
//  FoodFridge
//
//  Created by Jessie Pastan on 12/20/23.
//

import SwiftUI

@main
struct FoodFridgeApp: App {
    
    var body: some Scene {
        
        WindowGroup {
            AuthenthicationView()
                .environmentObject(TagsViewModel())
        }
    }
}
