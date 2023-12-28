//
//  selectionSheetView.swift
//  FoodFridge
//
//  Created by Jessie Pastan on 12/25/23.
//

import SwiftUI

struct SelectionSheetView: View {
    
    @State var searchTag = ""
    @Environment(\.dismiss) var dismiss
    private var listOfItems = ["bread", "jasmine rice", "rice noodles", "egg noodles", "wholewheat bread", "spagetthi", "glass noodles", "potato", "pasta","quinou", "oatmeal", "corn", "pita", "tortilla", "corn bread", "taro", "sweet potato"]
    var body: some View {
        HStack {
        Spacer()
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "x.circle.fill").resizable()
                
            })
            .frame(width: 20, height: 20)
            .padding(.top)
            .padding(.horizontal)
            .foregroundColor(Color(.button2))
        }
        
        
        NavigationStack {
            
            /*
            ScrollView {
                VStack {
                    
                    HStack{
                        Text("tag")
                        Text("tag")
                        Text("tag")
                        Text("tag")
                        Text("tag")
                        Text("tag")
                    }
                    HStack{
                        Text("tag")
                        Text("tag")
                        Text("tag")
                        Text("tag")
                        Text("tag")
                        Text("tag")
                    }
                    HStack{
                        Text("tag")
                        Text("tag")
                        Text("tag")
                        Text("tag")
                        Text("tag")
                        Text("tag")
                    }
                    HStack{
                        Text("tag")
                        Text("tag")
                        Text("tag")
                        Text("tag")
                        Text("tag")
                        Text("tag")
                    }
                    HStack{
                        Text("tag")
                        Text("tag")
                        Text("tag")
                        Text("tag")
                        Text("tag")
                        Text("tag")
                    }
        
                }
            }
             */
           }
           .searchable(text: $searchTag, placement:
                .navigationBarDrawer(displayMode: .always))
        
      
      
    }
}


#Preview {
    SelectionSheetView()
}
