//
//  LoginButton.swift
//  FoodFridge
//
//  Created by Jessie Pastan on 12/20/23.
//

import SwiftUI

struct LoginButton: View {
    var title: String = ""
    var width: CGFloat = 330
    var height: CGFloat = 40
    var action: () -> Void
    var image: String = ""
    
    var body: some View {
        
        Button(action:
           action
        , label: {
            HStack{
                Image(image)
                    .resizable()
                    .frame(width: 20 , height: 20)
                
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
