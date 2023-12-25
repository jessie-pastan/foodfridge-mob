//
//  LandingPageView.swift
//  FoodFridge
//
//  Created by Jessie Pastan on 12/21/23.
//

import SwiftUI

struct LandingPageView: View {
    
    @State var selectedCuisine: String = "Cuisine"
    @State private var isPickerExpanded = false
    @State private var isPickerVisible = false
    @State var showSheet = false
    
    let cuisine = ["Thai", "French", "Italian","Japnese", "Chinese"]
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                //MARK: Prompt
                ZStack {
                    let prompt = Rectangle()
                    prompt.frame( height: proxy.size.height / 3.5 )
                   
                }
                .padding()
                Spacer()
                //MARK: select ingredients
                Button("Select ingredients") {
                    showSheet = true
                }
                .sheet(isPresented: $showSheet) {
                    selectionSheetView()
                        .presentationDetents([.height(proxy.size.height / 1.3), .medium, .large])
                        .presentationDragIndicator(.hidden)
                }
                .font(.title).bold()
                
                  
                //Spacer()
                }
                .padding()
            }
        
        }
}

#Preview {
    LandingPageView()
}
