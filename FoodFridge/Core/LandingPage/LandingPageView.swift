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
        NavigationStack {
            GeometryReader { proxy in
                VStack {
                    //MARK: Head line
                    VStack {
                        Text("Let’s cook something from your fridge!")  .font(Font.custom("CourierPrime-Bold", size: 30))
                    }
            
                    //MARK: Prompt
                    ZStack {
                        let prompt = Rectangle()
                        prompt.frame( height: proxy.size.height / 4 ).cornerRadius(10)
                        //MARK: Display Selected ingredients
                        
                    }
                    .padding(.top, -10)
                    //MARK: Genenerate Recipes Button
                    VStack {
                        Button {
                            //call chat GPT api to get recipes
                        } label: {
                            SmallButton(title: "Generate Recipe")
                        }
                        
                    }
                    .frame(height: 50)
                    .padding()
                    .padding(.top, -20)
                    
                    Spacer()
                    //MARK: Select ingredients
                    Button("Select ingredients") {
                        showSheet = true
                    }
                    .sheet(isPresented: $showSheet) {
                        SelectionSheetView()
                            .presentationDetents([.height(proxy.size.height / 2 ), .medium, .large])
                            .presentationDragIndicator(.hidden)
                    }
                    .font(.title).bold()
                    
                }
                .padding()
                .toolbar {
                    ToolbarItem {
                        NavigationLink {
                            
                        }label: {
                            Image(systemName: "person.crop.circle")
                                .foregroundColor(.black)
                        }
                        
                        
                    }
                    
                }
                
            }
            
        }
    }
}

#Preview {
    LandingPageView()
}
