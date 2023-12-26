//
//  SelectIngredientsButton.swift
//  FoodFridge
//
//  Created by Jessie Pastan on 12/25/23.
//

import SwiftUI

struct SelectIngredientsButton: View {
    
    var icon: String = "dairy"
    var title: String = "this is title"
    var action: () -> Void
    var sheetHeight: CGFloat = 0
    var width: CGFloat = 180
    var height: CGFloat = 40
    
    
    @Binding var showSheet: Bool
    
    
    var body: some View {
        Button(action:
            action
        , label: {
            HStack {
                Image(icon)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.horizontal)
                Text(title)
                    .lineLimit(1)
                    .frame(width: width , height: height)
                    .foregroundColor(Color.button4)
                    .font(.custom(CustomFont.appFontRegular.rawValue, fixedSize: 20))
                    .padding(.leading, -45)
            }
            .background(Color.button1)
            .cornerRadius(120)
        })
        .sheet(isPresented: $showSheet) {
            SelectionSheetView()
                .presentationDetents([.height(sheetHeight / 2), .medium, .large])
                .presentationDragIndicator(.hidden)
        }
        .foregroundColor(.black)
        .font(.title).bold()
        
        
    }
}

#Preview {
    SelectIngredientsButton(action: {},showSheet: .constant(false))
        .previewLayout(.sizeThatFits)
}
