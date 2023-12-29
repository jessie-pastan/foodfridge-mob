//
//  LandingPageView.swift
//  FoodFridge
//
//  Created by Jessie Pastan on 12/21/23.
//

import SwiftUI

struct LandingPageView: View {
    
  
    @State private var showSheet = false
    @State var selectedTags = Set<String>()
    @State var selectedItems = [String]()
    @State private var referenceHeight: CGFloat = 0

    @EnvironmentObject var vm: TagsViewModel
    
    let itemCategories = ["Carbs", "Dairy", "Seasoning","Protein", "Veggies","Cuisine"]
    let threeRows = [GridItem(),GridItem(),GridItem()]
    
    var body: some View {
        NavigationStack {
            GeometryReader { proxy in
                VStack {
                    //MARK: Head line
                    VStack(alignment: .leading) {
                        Text("Let’s cook something from your fridge!")
                            .fixedSize(horizontal: false, vertical: true)
                            .font(Font.custom("CourierPrime-Bold", size: proxy.size.height / 25 ))
                        Text("Select items from categories below")
                            .font(Font.custom(CustomFont.appFontRegular.rawValue, size: 15))
                    }
                    
                    //MARK: Prompt
                    ZStack {
                        let prompt = Rectangle()
                        prompt.frame( height: proxy.size.height / 3.5).cornerRadius(10)
                            .onAppear {
                                referenceHeight = proxy.size.height / 3.5
                            }
                            //MARK: Display Selected ingredients in prompt
                            .overlay (
                                TagsViewPrompt(items: vm.selectedTags)
                                    .padding(.top, 3)
                                    .frame(height: referenceHeight * 0.7)
                                , alignment: .topLeading
                                    
                            )
                            //MARK: Genenerate Recipes Button
                            .overlay(
                                Button {
                                    //TODO: call chat GPT api to get recipes and navigate user to recipes screen
                                    
                                } label: {
                                    SmallButton(title: "Generate Recipe")
                                }
                                .frame(width: 200, height: 30)
                                .offset(y: 85)
                            )
                        
                        
                        
                           
                      
                        
                       
                        
                    }
                    .padding(.top, -10)
                    
                    //MARK: Picture
                    Image("chef")
                        .resizable()
                        .frame(width: proxy.size.width / 2 , height: proxy.size.width / 2)
                    Spacer()
                    //MARK: Select ingredients buttons
                    LazyHGrid (rows: threeRows) {
                        ForEach(0..<itemCategories.count, id: \.self) { item in
                            VStack {
                                SelectIngredientsButton(title: "\(itemCategories[item])", action: {
                                    showSheet = true
                                }, sheetHeight: proxy.size.height,width: proxy.size.width / 2.5, height: proxy.size.height / 15, showSheet: $showSheet)
                            }
                        }
                    }
                    .padding(.bottom, -5)
                    
                    Spacer()
                    
                }
                .padding(4)
                .toolbar {
                    ToolbarItem {
                        NavigationLink {
                            //TODO: navigate to profile view
                        }label: {
                            Image(systemName: "person.crop.circle")
                                .foregroundColor(Color(.button2))
                        }
                    }
                }
            }
        }
    }
}

//#Preview {
    //LandingPageView(items: <#Binding<Set<String>>#>)
//}
