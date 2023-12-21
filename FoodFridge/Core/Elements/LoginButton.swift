//
//  LoginButton.swift
//  FoodFridge
//
//  Created by Jessie Pastan on 12/20/23.
//

import SwiftUI

struct LoginButton: View {
    var title: String = ""
    var width: CGFloat = 200
    var height: CGFloat = 25
    var action: () -> Void
    
    var body: some View {
        
        Button(action:
           action
        , label: {
            VStack{
                Text(title)
                    .lineLimit(1)
                    .frame(width: width , height: height)
                    .foregroundColor(Color.button1)
                    .padding(7)
                    .background(Color.button2)
                    .cornerRadius(120)
            }
        }
        )
       
    }
}

#Preview {
    LoginButton(action: {})
               .previewLayout(.sizeThatFits)
}
